package http

import (
	"net/http"
)

type Server struct {
	server *http.Server
	mux    *http.ServeMux
}
