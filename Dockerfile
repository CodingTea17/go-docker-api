FROM golang:latest
RUN mkdir /app
ADD ./pkg /app/
WORKDIR /app
RUN go get "github.com/codingtea/go-docker-api"
RUN go build -o main .
CMD ["/app/main"]