package services

import (
	"context"

	"github.com/johnfercher/medium-logistic/internal/core/models"
	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type GraphViewer struct {
	repository ports.GraphRepository
}

func NewGraphViewer(repository ports.GraphRepository) *GraphViewer {
	return &GraphViewer{repository: repository}
}

func (g *GraphViewer) GetGraph(ctx context.Context) (*models.GraphView, error) {
	graph, err := g.repository.GetGraph(ctx)
	if err != nil {
		return nil, err
	}

	graphView := &models.GraphView{
		Cities: g.MapCities(ctx, graph.Cities),
		Roads:  g.MapRoads(ctx, graph.Roads),
	}

	return graphView, nil
}

// nolint:gomnd // design
func (g *GraphViewer) MapCities(ctx context.Context, cities []*models.City) []*models.CityView {
	views := []*models.CityView{}
	for _, city := range cities {
		nodeView := &models.CityView{
			ID:           city.ID,
			Name:         city.Name,
			Type:         "rect",
			Width:        GetWidthFromText(city.Name),
			Height:       40,
			BorderRadius: 10,
			Latitude:     city.Latitude * -1 * 20,
			Longitude:    city.Longitude * 20,
		}

		views = append(views, nodeView)
	}

	return views
}

func (g *GraphViewer) MapRoads(ctx context.Context, roads []*models.Road) []*models.RoadView {
	views := []*models.RoadView{}
	for _, road := range roads {
		edgeView := &models.RoadView{
			Source:   road.Source,
			Target:   road.Target,
			Distance: road.Distance,
		}
		views = append(views, edgeView)
	}

	return views
}

func GetWidthFromText(text string) int {
	borderSpace := 20
	return len(text)*5 + borderSpace
}
