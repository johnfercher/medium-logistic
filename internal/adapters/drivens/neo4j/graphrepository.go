package neo4j

import (
	"context"
	"github.com/johnfercher/medium-logistic/internal/core/models"
	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
	"log"
)

type GraphRepository struct {
	db neo4j.DriverWithContext
}

func NewGraphRepository(db neo4j.DriverWithContext) *GraphRepository {
	return &GraphRepository{db: db}
}

func (g *GraphRepository) GetGraph(ctx context.Context) (*models.Graph, error) {
	// Return path between vertex
	result, err := neo4j.ExecuteQuery(ctx, g.db, `MATCH p=(x:City)-[r]-(y:City) WHERE (x)-[:road]->(y) RETURN p`,
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))

	if err != nil {
		log.Fatal(err.Error())
	}

	graph := &models.Graph{}

	// To not repeat bidirectional edges
	roads := make(map[string]*models.Road)

	for _, record := range result.Records {
		path := record.Values[0].(neo4j.Path)

		city := &models.City{}
		for i, node := range path.Nodes {
			if i == 0 {
				city = &models.City{
					ID:         node.Props["id"].(string),
					Name:       node.Props["name"].(string),
					State:      node.Props["state"].(string),
					Acronym:    node.Props["acronym"].(string),
					Type:       node.Props["type"].(string),
					Latitude:   node.Props["latitude"].(float64),
					Longitude:  node.Props["longitude"].(float64),
					Population: int(node.Props["population"].(int64)),
				}

				graph.Cities = append(graph.Cities, city)
				continue
			}

			road := &models.Road{
				Source: city.ID,
				Target: node.Props["id"].(string),
			}

			roads[road.Key()] = road
		}
	}

	for _, road := range roads {
		graph.Roads = append(graph.Roads, road)
	}

	return graph, nil
}
