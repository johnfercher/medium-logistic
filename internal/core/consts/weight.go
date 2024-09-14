package consts

type WeightType string

const (
	Distance WeightType = "distance"
	Duration WeightType = "duration"
	Price    WeightType = "price"
)

func (w WeightType) String() string {
	return string(w)
}

func (w WeightType) Unit() string {
	switch w {
	case Distance:
		return "km"
	case Duration:
		return "h"
	case Price:
		return "reais"
	default:
		return ""
	}
}

func (w WeightType) IsValid() bool {
	switch w {
	case Distance:
		return true
	case Duration:
		return true
	case Price:
		return true
	default:
		return false
	}
}
