package http

import (
	"encoding/json"
	"github.com/johnfercher/medium-logistic/internal/core/models"
	"net/http"

	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type GetShortestPath struct {
	graphViewer ports.GraphViewer
}

func NewGetShortestPath(graphViewer ports.GraphViewer) *GetShortestPath {
	return &GetShortestPath{
		graphViewer: graphViewer,
	}
}

func (f *GetShortestPath) Method() string {
	return "POST"
}

func (f *GetShortestPath) Pattern() string {
	return "/graph/shortest_path"
}

func (f *GetShortestPath) Func(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	ctx := r.Context()

	search, err := f.decodeShortestPath(r)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	graph, err := f.graphViewer.GetShortestPath(ctx, search.WeightType, search.Source, search.Target, search.EdgeType)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	response := Map(graph)

	WriteResponse(w, response, http.StatusOK)
}

func (f *GetShortestPath) decodeShortestPath(r *http.Request) (*models.ShortestPath, error) {
	shortestPath := &models.ShortestPath{}
	err := json.NewDecoder(r.Body).Decode(&shortestPath)
	if err != nil {
		return nil, err
	}

	err = shortestPath.Validate()
	if err != nil {
		return nil, err
	}

	return shortestPath, nil
}
