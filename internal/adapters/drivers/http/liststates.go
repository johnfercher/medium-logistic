package http

import (
	"net/http"

	"github.com/johnfercher/medium-logistic/internal/core/ports"
)

type ListStates struct {
	graphRepository ports.GraphRepository
}

func NewListStates() *ListStates {
	return &ListStates{}
}

func (f *ListStates) Method() string {
	return "GET"
}

func (f *ListStates) Pattern() string {
	return "/states"
}

func (f *ListStates) Func(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	states := []string{
		"AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO",
		"MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI",
		"RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO",
		"INTL",
	}

	WriteResponse(w, struct {
		States []string `json:"states"`
	}{
		states,
	}, http.StatusOK)
}
