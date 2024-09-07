package models

type GraphView struct {
	Cities []*CityView
	Roads  []*RoadView
	Paths  []*PathView
}

type CityView struct {
	ID           string
	Name         string
	Color        string
	Radius       int
	BorderRadius int
	Type         string
	Width        int
	Height       int
	Latitude     float64
	Longitude    float64
}

type RoadView struct {
	Source   string
	Target   string
	Distance int
}

type PathView struct {
	Roads []string
	Color string
}
