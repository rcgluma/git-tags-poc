package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/hello", func(w http.ResponseWriter, r *http.Request){
		fmt.Fprintf(w, "Hello there")
	})

	fmt.Println("Starting server on port 54321")
	http.ListenAndServe(":54321", nil)
}
