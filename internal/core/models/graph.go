package models

import (
	"fmt"
	"github.com/johnfercher/medium-logistic/internal/core/consts"
)

type Graph struct {
	Cities []*City
	Roads  []*Edge
}

func (g *Graph) Query() string {
	query := `MATCH p=(x:City)-[r]-(y:City) WHERE (x)-[r]->(y) AND`
	for i := 0; i < len(g.Cities)-1; i++ {
		if i < len(g.Cities)-2 {
			query += fmt.Sprintf(` (x.id = "%s" AND y.id = "%s") OR`, g.Cities[i].ID, g.Cities[i+1].ID)
		} else {
			query += fmt.Sprintf(` (x.id = "%s" AND y.id = "%s")`, g.Cities[i].ID, g.Cities[i+1].ID)
		}
	}

	query += " RETURN p"
	return query
}

type City struct {
	ID         string
	Name       string
	State      string
	Acronym    string
	Type       string
	Latitude   float64
	Longitude  float64
	Population int
}

type Edge struct {
	Source   string
	Target   string
	Distance int
	Duration float64
	Price    float64
	Type     string
}

func (r *Edge) GetWeight(weightType consts.WeightType) float64 {
	switch weightType {
	case consts.Distance:
		return float64(r.Distance)
	case consts.Price:
		return r.Price
	case consts.Duration:
		return r.Duration
	default:
		return 0
	}
}

func (r *Edge) Key() string {
	if r.Source < r.Target {
		return r.Source + r.Target + r.Type
	}
	return r.Target + r.Source + r.Type
}

type WeightedGraph struct {
	Cities []*City
	Roads  []*WeightedEdge
}

func (g *WeightedGraph) Query() string {
	query := `MATCH p=(x:City)-[r]-(y:City) WHERE (x)-[r]->(y) AND`
	for i := 0; i < len(g.Cities)-1; i++ {
		if i < len(g.Cities)-2 {
			query += fmt.Sprintf(` (x.id = "%s" AND y.id = "%s") OR`, g.Cities[i].ID, g.Cities[i+1].ID)
		} else {
			query += fmt.Sprintf(` (x.id = "%s" AND y.id = "%s")`, g.Cities[i].ID, g.Cities[i+1].ID)
		}
	}

	query += " RETURN p"
	return query
}

type WeightedEdge struct {
	Source     string
	Target     string
	Weight     float64
	WeightType consts.WeightType
	Type       string
}

func (r *WeightedEdge) Key() string {
	if r.Source < r.Target {
		return r.Source + r.Target + r.Type
	}
	return r.Target + r.Source + r.Type
}

func (r *WeightedEdge) WeightedKey() string {
	if r.Source < r.Target {
		return r.Source + r.Target + fmt.Sprintf("%f", r.Weight)
	}
	return r.Target + r.Source + fmt.Sprintf("%f", r.Weight)
}
