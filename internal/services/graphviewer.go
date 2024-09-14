package services

import (
	"context"
	"github.com/johnfercher/medium-logistic/internal/core/consts"

	"github.com/johnfercher/medium-logistic/internal/core/models"
	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type GraphViewer struct {
	repository ports.GraphRepository
}

func NewGraphViewer(repository ports.GraphRepository) *GraphViewer {
	return &GraphViewer{repository: repository}
}

func (g *GraphViewer) GetShortestPath(ctx context.Context, weightType consts.WeightType, source string, target string, edgeType string) (*models.GraphView, error) {
	vertices, err := g.repository.GetVertices(ctx)
	if err != nil {
		return nil, err
	}

	graphShortestPath, err := g.repository.GetShortestPath(ctx, weightType, source, target, edgeType)
	if err != nil {
		return nil, err
	}

	graphView := &models.GraphView{
		Cities: g.mapCities(ctx, vertices),
		Roads:  g.mapWeightedRoads(ctx, graphShortestPath.Roads),
	}

	return graphView, nil
}

func (g *GraphViewer) Search(ctx context.Context, search *models.Search) (*models.GraphView, error) {
	graph, err := g.repository.Search(ctx, search)
	if err != nil {
		return nil, err
	}

	graphView := &models.GraphView{
		Cities: g.mapCities(ctx, graph.Cities),
		Roads:  g.mapRoads(ctx, graph.Roads, search.WeightType),
	}

	return graphView, nil
}

// nolint:gomnd // design
func (g *GraphViewer) mapCities(ctx context.Context, cities []*models.City) []*models.CityView {
	views := []*models.CityView{}
	for _, city := range cities {
		nodeView := &models.CityView{
			ID:           city.ID,
			Name:         city.Name,
			Type:         "rect",
			Width:        GetWidthFromText(city.Name),
			Height:       40,
			BorderRadius: 10,
			Latitude:     (city.Latitude * -1 * 50) - 650,
			Longitude:    (city.Longitude * 50) + 2700,
		}

		if city.Type == "Capital" {
			nodeView.Color = "#2345AB"
		} else if city.Type == "Normal" {
			nodeView.Color = "#008E30"
		} else if city.Type == "International" {
			nodeView.Color = "#D8002F"
		} else {
			nodeView.Color = "#9768A5"
		}

		views = append(views, nodeView)
	}

	return views
}

func (g *GraphViewer) mapRoads(ctx context.Context, roads []*models.Edge, weightType consts.WeightType) []*models.RoadView {
	views := []*models.RoadView{}
	for _, road := range roads {
		edgeView := &models.RoadView{
			Source:     road.Source,
			Target:     road.Target,
			Weight:     road.GetWeight(weightType),
			WeightType: weightType,
		}

		if road.Type == "air" {
			edgeView.Color = "#F7B900"
			edgeView.Type = "curve"
			edgeView.Width = 4
		} else if road.Type == "water" {
			edgeView.Color = "#3355BB"
			edgeView.Type = "curve"
			edgeView.Width = 4
		} else if road.Type == "road" {
			edgeView.Color = "#666"
			edgeView.Type = "curve"
			edgeView.Width = 3
		} else {
			edgeView.Color = "#844E29"
			edgeView.Type = "curve"
			edgeView.Width = 3
		}

		views = append(views, edgeView)
	}

	return views
}

func (g *GraphViewer) mapWeightedRoads(ctx context.Context, roads []*models.WeightedEdge) []*models.RoadView {
	views := []*models.RoadView{}
	for _, road := range roads {
		edgeView := &models.RoadView{
			Source:     road.Source,
			Target:     road.Target,
			Weight:     road.Weight,
			WeightType: road.WeightType,
		}

		if road.Type == "air" {
			edgeView.Color = "#F7B900"
			edgeView.Type = "curve"
			edgeView.Width = 4
		} else if road.Type == "water" {
			edgeView.Color = "#3355BB"
			edgeView.Type = "curve"
			edgeView.Width = 4
		} else if road.Type == "road" {
			edgeView.Color = "#666"
			edgeView.Type = "curve"
			edgeView.Width = 3
		} else {
			edgeView.Color = "#844E29"
			edgeView.Type = "curve"
			edgeView.Width = 3
		}

		views = append(views, edgeView)
	}

	return views
}

func GetWidthFromText(text string) int {
	borderSpace := 20
	return len(text)*5 + borderSpace
}
