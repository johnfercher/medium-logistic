package models

type Graph struct {
	Cities []*City
	Roads  []*Road
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

type Road struct {
	Source   string
	Target   string
	Distance float64
}

func (r *Road) Key() string {
	if r.Source < r.Target {
		return r.Source + r.Target
	}
	return r.Target + r.Source
}
