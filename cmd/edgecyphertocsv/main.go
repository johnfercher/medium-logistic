package main

import (
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	airs, err := loadEdge("neo4j/scripts/airs.cypher")
	if err != nil {
		log.Fatal(err)
	}

	roads, err := loadEdge("neo4j/scripts/roads.cypher")
	if err != nil {
		log.Fatal(err)
	}

	trains, err := loadEdge("neo4j/scripts/trains.cypher")
	if err != nil {
		log.Fatal(err)
	}

	waters, err := loadEdge("neo4j/scripts/waters.cypher")
	if err != nil {
		log.Fatal(err)
	}

	edges := []string{
		"source,target,type,distance,speed,delay,price_rate",
	}

	edges = append(edges, airs...)
	edges = append(edges, roads...)
	edges = append(edges, trains...)
	edges = append(edges, waters...)

	content := strings.Join(edges, "\n")

	err = os.WriteFile("data/edges.csv", []byte(content), os.ModePerm)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(content)
}

func loadEdge(file string) ([]string, error) {
	b, err := os.ReadFile(file)
	if err != nil {
		return nil, err
	}

	content := string(b)

	content = strings.ReplaceAll(content, `MATCH (a:City), (b:City) WHERE a.id = "`, ``)
	content = strings.ReplaceAll(content, `" AND b.id = "`, `,`)
	content = strings.ReplaceAll(content, `" CREATE (a)-[:`, `,`)
	content = strings.ReplaceAll(content, `" CREATE (a)<-[:`, `,`)
	content = strings.ReplaceAll(content, ` {distance:`, `,`)
	content = strings.ReplaceAll(content, `, speed:`, `,`)
	content = strings.ReplaceAll(content, `, delay:`, `,`)
	content = strings.ReplaceAll(content, `, price_rate:`, `,`)
	content = strings.ReplaceAll(content, `}]->(b);`, ``)
	content = strings.ReplaceAll(content, `}]-(b);`, ``)
	content = strings.ReplaceAll(content, "\n\n", "\n")

	lines := strings.Split(content, "\n")

	mapEdges := make(map[string]bool)
	for _, line := range lines {
		mapEdges[line] = true
	}

	var edges []string
	for key, _ := range mapEdges {
		edges = append(edges, key)
	}

	return edges, nil
}
