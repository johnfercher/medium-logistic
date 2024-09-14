package http

import (
	"net/http"

	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type ListCities struct {
	graphRepository ports.GraphRepository
}

func NewListCities(graphRepository ports.GraphRepository) *ListCities {
	return &ListCities{
		graphRepository: graphRepository,
	}
}

func (f *ListCities) Method() string {
	return "GET"
}

func (f *ListCities) Pattern() string {
	return "/cities"
}

func (f *ListCities) Func(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	ctx := r.Context()

	graph, err := f.graphRepository.GetVertices(ctx)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	response := MapCities(graph)

	WriteResponse(w, response, http.StatusOK)
}
