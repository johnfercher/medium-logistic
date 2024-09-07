package http

import (
	"encoding/json"
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
