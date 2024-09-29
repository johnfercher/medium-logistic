package models

import "github.com/johnfercher/medium-logistic/internal/core/consts"

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
	Source     string
	Target     string
	Weight     float64
	WeightType consts.WeightType
	Color      string
	Type       string
	Dashed     bool
	Width      int
}

type PathView struct {
	Roads []string
	Color string
}

func GetColor(acronym string) string {
	switch acronym {
	case "AC":
		return "#9D3CF6"
	case "AL":
		return "#3C84F7"
	case "AP":
		return "#816626"
	case "AM":
		return "#6F3BAF"
	case "BA":
		return "#575757"
	case "CE":
		return "#3A7F5A"
	case "DF":
		return "#68F859"
	case "ES":
		return "#F6E1A7"
	case "GO":
		return "#A62C66"
	case "MA":
		return "#50B95C"
	case "MT":
		return "#BA4F2D"
	case "MS":
		return "#D6A5F8"
	case "MG":
		return "#EE47F3"
	case "PA":
		return "#385B95"
	case "PB":
		return "#F8B041"
	case "PR":
		return "#F0A49F"
	case "PE":
		return "#95A93D"
	case "PI":
		return "#E74138"
	case "RJ":
		return "#65F9D1"
	case "RN":
		return "#59D5FB"
	case "RS":
		return "#A5339B"
	case "RO":
		return "#B778A2"
	case "RR":
		return "#EF48B9"
	case "SC":
		return "#A62C66"
	case "SP":
		return "#F9E152"
	case "SE":
		return "#782444"
	default: // TO
		return "#EB3C83"
	}
}
