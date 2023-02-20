package app

import (
	"fmt"
	"net/http"
)

const RESPONSE = `
<html>
<title>Demo</title>
<body>
<h2> Demo API </h2>
</body>
</html>
`

func HTTPHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "%s", RESPONSE)
}

func Serve(address string) {
	http.HandleFunc("/", HTTPHandler)
	http.ListenAndServe((address), nil)
}
