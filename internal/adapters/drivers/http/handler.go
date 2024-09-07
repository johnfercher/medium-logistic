package http

import "net/http"

type Handler interface {
	Method() string
	Pattern() string
	Func(w http.ResponseWriter, r *http.Request)
}
