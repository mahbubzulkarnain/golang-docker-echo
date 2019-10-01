FROM golang:1.10

WORKDIR /go/src/github.com/mahbubzulkarnain/golang-docker-echo

COPY . .

RUN ["go", "get", "github.com/githubnemo/CompileDaemon"]

ENTRYPOINT CompileDaemon -log-prefix=false -build="go build ./cmd/server/" -command="./server"