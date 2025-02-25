package main

// Import external packages, for this to work we need to import the package in the environment.
// For that we should init the program "go mod init project_path", resolve and download the dependencies "go mod tidy".
// The above will create a go.mod file that track the dependencies of the project
// To remove the package we can simply comment/delete the package import and the run "go mod tidy"

import (
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	r := mux.NewRouter()
	http.Handle("/", r)
}