package main

import (
	"context"
	"log"
	"net/http"
	"os"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/go-chi/cors"
	neo4j2 "github.com/johnfercher/medium-logistic/internal/adapters/drivens/neo4j"
	http2 "github.com/johnfercher/medium-logistic/internal/adapters/drivers/http"
	"github.com/johnfercher/medium-logistic/internal/services"
	"github.com/johnfercher/medium-logistic/pkg/config"
	"github.com/johnfercher/medium-logistic/pkg/neo4jdriver"
)

func main() {
	ctx := context.TODO()
	cfg, err := config.Load(os.Args)
	if err != nil {
		panic(err)
	}

	driver, err := neo4jdriver.Start(cfg.Neo4j.URL, cfg.Neo4j.User, cfg.Neo4j.Password)
	if err != nil {
		log.Fatal(err)
	}

	repository := neo4j2.NewGraphRepository(driver)
	repository.InitProjection(ctx)

	graphViewer := services.NewGraphViewer(repository)

	getShortestPath := http2.NewGetShortestPath(graphViewer)
	searchGraph := http2.NewSearchGraph(graphViewer)
	listCities := http2.NewListCities(repository)
	listStates := http2.NewListStates()

	r := chi.NewRouter()
	r.Use(middleware.Logger)

	// To allow frontend call
	r.Use(cors.Handler(cors.Options{
		// AllowedOrigins:   []string{"https://foo.com"}, // Use this to allow specific origin hosts
		AllowedOrigins: []string{"https://*", "http://*"},
		// AllowOriginFunc:  func(r *adapterhttp.Request, origin string) bool { return true },
		AllowedMethods:   []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowedHeaders:   []string{"Accept", "Authorization", "Content-Type", "X-CSRF-Token"},
		ExposedHeaders:   []string{"Link"},
		AllowCredentials: false,
		MaxAge:           0, // Maximum value not ignored by any of major browsers
	}))

	r.MethodFunc(getShortestPath.Method(), getShortestPath.Pattern(), getShortestPath.Func)
	r.MethodFunc(searchGraph.Method(), searchGraph.Pattern(), searchGraph.Func)
	r.MethodFunc(listCities.Method(), listCities.Pattern(), listCities.Func)
	r.MethodFunc(listStates.Method(), listStates.Pattern(), listStates.Func)

	_ = http.ListenAndServe(":8083", r)
}
