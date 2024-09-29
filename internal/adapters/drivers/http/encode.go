package http

import (
	"encoding/json"
	"errors"
	"github.com/go-chi/chi/v5"
	"net/http"
)

func Encode(value any) []byte {
	b, _ := json.Marshal(value)
	return b
}

func WriteResponse(w http.ResponseWriter, value any, status int) {
	b := Encode(value)
	w.WriteHeader(status)
	_, _ = w.Write(b)
}

func DecodeStringFromURI(r *http.Request, label string) (string, error) {
	id := chi.URLParam(r, label)
	if id == "" {
		return "", errors.New("empty_url_param_error")
	}

	return id, nil
}
