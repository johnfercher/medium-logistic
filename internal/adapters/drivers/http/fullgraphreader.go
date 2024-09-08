package http

import (
	"net/http"

	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type FullGraphReader struct {
	graphViewer ports.GraphViewer
}

func NewFullGraphReader(graphViewer ports.GraphViewer) *FullGraphReader {
	return &FullGraphReader{
		graphViewer: graphViewer,
	}
}

func (f *FullGraphReader) Method() string {
	return "GET"
}

func (f *FullGraphReader) Pattern() string {
	return "/graph"
}

func (f *FullGraphReader) Func(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	ctx := r.Context()

	graph, err := f.graphViewer.GetGraph(ctx)
	if err != nil {
		WriteResponse(w, err, http.StatusInternalServerError)
		return
	}

	response := Map(graph)

	WriteResponse(w, response, http.StatusOK)
}
