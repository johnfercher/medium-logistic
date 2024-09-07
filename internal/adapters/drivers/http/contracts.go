package http

import (
	"fmt"
	"github.com/johnfercher/medium-logistic/internal/core/models"
)

type Graph struct {
	Nodes map[string]*Node `json:"nodes"`
	Edges map[string]*Edge `json:"edges"`
	Path  map[string]*Path `json:"paths"`
}

type Node struct {
	ID           string  `json:"id"`
	Name         string  `json:"name"`
	Color        string  `json:"color"`
	Radius       int     `json:"radius"`
	BorderRadius int     `json:"border_radius"`
	Type         string  `json:"type"`
	Width        int     `json:"width"`
	Height       int     `json:"height"`
	X            float64 `json:"x"`
	Y            float64 `json:"y"`
}

type Edge struct {
	Source string `json:"source"`
	Target string `json:"target"`
}

type Path struct {
	Edges []string `json:"edges"`
	Color string   `json:"color"`
}

func Map(graph *models.GraphView) *Graph {
	response := &Graph{
		Nodes: make(map[string]*Node),
		Edges: make(map[string]*Edge),
	}

	for _, city := range graph.Cities {
		n := &Node{
			ID:           city.ID,
			Name:         city.Name,
			Color:        city.Color,
			Radius:       city.Radius,
			BorderRadius: city.BorderRadius,
			Type:         city.Type,
			Width:        city.Width,
			Height:       city.Height,
			Y:            city.Latitude,
			X:            city.Longitude,
		}
		response.Nodes[city.ID] = n
	}

	for i, road := range graph.Roads {
		response.Edges[fmt.Sprintf("edge%d", i)] = &Edge{
			Source: road.Source,
			Target: road.Target,
		}
	}

	return response
}
