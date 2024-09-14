package neo4j

import (
	"context"
	"errors"
	"fmt"
	"github.com/johnfercher/medium-logistic/internal/core/consts"
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

func (g *GraphRepository) InitProjection(ctx context.Context) {
	_, err := neo4j.ExecuteQuery(ctx, g.db, `MATCH (a:City)-[r]->(b:City)
RETURN gds.graph.project(
  'projection',
  a,
  b,
  { 
	relationshipProperties: r { .distance, .duration, .price },
    relationshipType: type(r)
  }
)`,
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))
	if err != nil {
		log.Print(err.Error())
	}
}

func (g *GraphRepository) GetVertices(ctx context.Context) ([]*models.City, error) {
	result, err := neo4j.ExecuteQuery(ctx, g.db, `MATCH p=(x:City)-[r]-(y:City) WHERE (x)-[]->(y) RETURN p`,
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))
	if err != nil {
		return nil, err
	}

	return g.mapVertices(ctx, result)
}

func (g *GraphRepository) GetShortestPath(ctx context.Context, weightType consts.WeightType, source string, target string, edgeType string) (*models.WeightedGraph, error) {
	query := g.getQueryProjection(weightType, source, target, edgeType)

	result, err := neo4j.ExecuteQuery(ctx, g.db, query,
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))
	if err != nil {
		return nil, err
	}

	shortestPath, err := g.mapShortestPath(ctx, result, weightType)
	if err != nil {
		return nil, err
	}

	return g.getPath(ctx, shortestPath, weightType)
}

func (g *GraphRepository) Search(ctx context.Context, search *models.Search) (*models.Graph, error) {
	result, err := neo4j.ExecuteQuery(ctx, g.db, search.Query(),
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))
	if err != nil {
		return nil, err
	}

	return g.mapPathGraph(ctx, result)
}

func (g *GraphRepository) getPath(ctx context.Context, path *models.WeightedGraph, weightType consts.WeightType) (*models.WeightedGraph, error) {
	query := path.Query()
	result, err := neo4j.ExecuteQuery(ctx, g.db, query,
		nil,
		neo4j.EagerResultTransformer,
		neo4j.ExecuteQueryWithReadersRouting(),
		neo4j.ExecuteQueryWithDatabase(""))
	if err != nil {
		return nil, err
	}

	return g.mapComputedPathGraph(ctx, result, path, weightType)
}

func (g *GraphRepository) mapShortestPath(ctx context.Context, result *neo4j.EagerResult, weightType consts.WeightType) (*models.WeightedGraph, error) {
	graph := &models.WeightedGraph{}

	if len(result.Records) == 0 {
		return nil, errors.New("no records found")
	}

	record := result.Records[0]

	nodes := record.Values[6].([]any)
	weights := record.Values[5].([]any)
	var lastCity *models.City
	var lastWeight float64

	for i := 0; i < len(nodes); i++ {
		w := weights[i].(float64)
		n := nodes[i].(neo4j.Node)

		city := nodeToCity(n)

		graph.Cities = append(graph.Cities, city)

		if i > 0 {
			weightC := w - lastWeight
			road := &models.WeightedEdge{
				Source:     lastCity.ID,
				Target:     city.ID,
				Weight:     weightC,
				WeightType: weightType,
			}
			graph.Roads = append(graph.Roads, road)
		}

		lastCity = city
		lastWeight = w
	}

	return graph, nil
}

func (g *GraphRepository) mapPathGraph(ctx context.Context, result *neo4j.EagerResult) (*models.Graph, error) {
	graph := &models.Graph{}

	// To not repeat bidirectional edges
	roads := make(map[string]*models.Edge)

	for _, record := range result.Records {
		path := record.Values[0].(neo4j.Path)

		city := &models.City{}
		for i, node := range path.Nodes {
			if i == 0 {
				city = nodeToCity(node)

				graph.Cities = append(graph.Cities, city)
				continue
			}

			road := &models.Edge{
				Source:   city.ID,
				Target:   node.Props["id"].(string),
				Distance: int(path.Relationships[0].Props["distance"].(int64)),
				Duration: path.Relationships[0].Props["duration"].(float64),
				Price:    path.Relationships[0].Props["price"].(float64),
				Type:     path.Relationships[0].Type,
			}

			roads[road.Key()] = road
		}
	}

	for _, road := range roads {
		graph.Roads = append(graph.Roads, road)
	}

	return graph, nil
}

func (g *GraphRepository) mapComputedPathGraph(ctx context.Context, result *neo4j.EagerResult, path *models.WeightedGraph, weightType consts.WeightType) (*models.WeightedGraph, error) {
	graph := &models.WeightedGraph{}

	edges := make(map[string]*models.WeightedEdge)
	for _, edge := range path.Roads {
		edges[edge.WeightedKey()] = edge
	}

	// To not repeat bidirectional edges
	roads := make(map[string]*models.WeightedEdge)

	for _, record := range result.Records {
		path := record.Values[0].(neo4j.Path)

		city := &models.City{}
		for i, node := range path.Nodes {
			if i == 0 {
				city = nodeToCity(node)

				graph.Cities = append(graph.Cities, city)
				continue
			}

			weight := 0.0

			wFloat64, ok := path.Relationships[0].Props[weightType.String()].(float64)
			if ok {
				weight = wFloat64
			}

			wInt64, ok := path.Relationships[0].Props[weightType.String()].(int64)
			if ok {
				weight = float64(wInt64)
			}

			edge := &models.WeightedEdge{
				Source:     city.ID,
				Target:     node.Props["id"].(string),
				Weight:     weight,
				WeightType: weightType,
				Type:       path.Relationships[0].Type,
			}

			weightedKey := edge.WeightedKey()
			_, ok = edges[weightedKey]
			if ok {
				roads[edge.Key()] = edge
			}
		}
	}

	for _, road := range roads {
		graph.Roads = append(graph.Roads, road)
	}

	return graph, nil
}

func (g *GraphRepository) mapVertices(ctx context.Context, result *neo4j.EagerResult) ([]*models.City, error) {
	citiesMap := make(map[string]*models.City)

	for _, record := range result.Records {
		path := record.Values[0].(neo4j.Path)

		city := &models.City{}
		for i, node := range path.Nodes {
			if i == 0 {
				city = nodeToCity(node)

				citiesMap[city.ID] = city
				continue
			}
		}
	}

	var cities []*models.City
	for _, city := range citiesMap {
		cities = append(cities, city)
	}

	return cities, nil
}

func (g *GraphRepository) getQueryProjection(weight consts.WeightType, source, target, edgeType string) string {
	if edgeType == "" {
		query := fmt.Sprintf(`MATCH (source:City {id: '%s'}), (target:City {id: '%s'})
CALL gds.shortestPath.dijkstra.stream('projection', {
    sourceNode: source,
    targetNodes: target,
    relationshipWeightProperty: '%s'
})
YIELD index, sourceNode, targetNode, totalCost, nodeIds, costs, path
RETURN
    index,
    gds.util.asNode(sourceNode).name AS sourceNodeName,
    gds.util.asNode(targetNode).name AS targetNodeName,
    totalCost,
    [nodeId IN nodeIds | gds.util.asNode(nodeId).name] AS nodeNames,
    costs,
    nodes(path) as path
ORDER BY index`, source, target, weight)

		return query
	}

	query := fmt.Sprintf(`MATCH (source:City {id: '%s'}), (target:City {id: '%s'})
CALL gds.shortestPath.dijkstra.stream('projection', {
    sourceNode: source,
    targetNodes: target,
    relationshipWeightProperty: '%s',
	relationshipTypes: ["%s"]
})
YIELD index, sourceNode, targetNode, totalCost, nodeIds, costs, path
RETURN
    index,
    gds.util.asNode(sourceNode).name AS sourceNodeName,
    gds.util.asNode(targetNode).name AS targetNodeName,
    totalCost,
    [nodeId IN nodeIds | gds.util.asNode(nodeId).name] AS nodeNames,
    costs,
    nodes(path) as path
ORDER BY index`, source, target, weight, edgeType)

	return query
}

func nodeToCity(node neo4j.Node) *models.City {
	return &models.City{
		ID:         node.Props["id"].(string),
		Name:       node.Props["name"].(string),
		State:      node.Props["state"].(string),
		Acronym:    node.Props["acronym"].(string),
		Type:       node.Props["type"].(string),
		Latitude:   node.Props["latitude"].(float64),
		Longitude:  node.Props["longitude"].(float64),
		Population: int(node.Props["population"].(int64)),
	}
}
