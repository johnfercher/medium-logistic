package main

import (
	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/go-chi/cors"
	neo4j2 "github.com/johnfercher/medium-logistic/internal/adapters/drivens/neo4j"
	http2 "github.com/johnfercher/medium-logistic/internal/adapters/drivers/http"
	"github.com/johnfercher/medium-logistic/internal/services"
	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
	"log"
	"net/http"
)

func main() {
	driver, err := connectNeo4j()
	if err != nil {
		log.Fatal(err)
	}

	repository := neo4j2.NewGraphRepository(driver)
	graphViewer := services.NewGraphViewer(repository)

	fullGraphReader := http2.NewFullGraphReader(graphViewer)

	r := chi.NewRouter()
	r.Use(middleware.Logger)

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

	r.MethodFunc(fullGraphReader.Method(), fullGraphReader.Pattern(), fullGraphReader.Func)

	http.ListenAndServe(":3000", r)
}

func connectNeo4j() (neo4j.DriverWithContext, error) {
	conn, err := neo4j.NewDriverWithContext("bolt://localhost:7687", neo4j.BasicAuth("neo4j", "supersecret", ""))
	if err != nil {
		return nil, err
	}

	return conn, nil
}
