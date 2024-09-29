package main

import (
	"fmt"
	"github.com/gocarina/gocsv"
	"log"
	"os"
	"strings"
)

type Edge struct {
	Source    string  `csv:"source"`
	Target    string  `csv:"target"`
	Type      string  `csv:"type"`
	Distance  int     `csv:"distance"`
	Speed     int     `csv:"speed"`
	Delay     int     `csv:"delay"`
	PriceRate float64 `csv:"price_rate"`
	Duration  float64 `csv:"duration"`
	Price     float64 `csv:"price"`
}

func (e *Edge) ToCypher(front bool) string {
	cypher := `MATCH (a:City), (b:City) WHERE a.id = "`
	cypher += e.Source

	cypher += `" AND b.id = "`
	cypher += e.Target

	if front {
		cypher += `" CREATE (a)-[:`
		cypher += e.Type
	} else {
		cypher += `" CREATE (a)<-[:`
		cypher += e.Type
	}

	cypher += ` {distance:`
	cypher += fmt.Sprintf("%d", e.Distance)

	cypher += `, speed:`
	cypher += fmt.Sprintf("%d", e.Speed)

	cypher += `, delay:`
	cypher += fmt.Sprintf("%d", e.Delay)

	cypher += `, price_rate:`
	cypher += fmt.Sprintf("%f", e.PriceRate)

	cypher += `, duration:`
	cypher += fmt.Sprintf("%f", e.Duration)

	cypher += `, price:`
	cypher += fmt.Sprintf("%f", e.Price)

	if front {
		cypher += `}]->(b);`
	} else {
		cypher += `}]-(b);`
	}

	return cypher
}

func main() {
	edgesFile, err := os.OpenFile("data/edges_computed.csv", os.O_RDWR|os.O_CREATE, os.ModePerm)
	if err != nil {
		panic(err)
	}
	defer edgesFile.Close()

	edges := []*Edge{}

	if err := gocsv.UnmarshalFile(edgesFile, &edges); err != nil { // Load clients from file
		log.Fatal(err)
	}

	var lines []string

	for _, edge := range edges {
		lines = append(lines, edge.ToCypher(true))
		lines = append(lines, edge.ToCypher(false))
	}

	content := strings.Join(lines, "\n")
	err = os.WriteFile("neo4j/scripts/edges.cypher", []byte(content), os.ModePerm)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(content)
}
