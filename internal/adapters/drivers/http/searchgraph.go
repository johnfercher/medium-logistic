package http

import (
	"encoding/json"
	"github.com/johnfercher/medium-logistic/internal/core/models"
	"net/http"

	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type SearchGraph struct {
	graphViewer ports.GraphViewer
}

func NewSearchGraph(graphViewer ports.GraphViewer) *SearchGraph {
	return &SearchGraph{
		graphViewer: graphViewer,
	}
}

func (f *SearchGraph) Method() string {
	return "POST"
}

func (f *SearchGraph) Pattern() string {
	return "/graph/search"
}

func (f *SearchGraph) Func(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	ctx := r.Context()

	search, err := f.decodeSearch(r)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	graph, err := f.graphViewer.Search(ctx, search)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	response := Map(graph)

	WriteResponse(w, response, http.StatusOK)
}

func (f *SearchGraph) decodeSearch(r *http.Request) (*models.Search, error) {
	search := &models.Search{}
	err := json.NewDecoder(r.Body).Decode(&search)
	if err != nil {
		return nil, err
	}

	return search, nil
}
