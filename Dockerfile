# Grabs the latest and greatest Go docker image
FROM golang:latest

# Creates an app dir
RUN mkdir /app

# Sets the app dir as the wd
WORKDIR /app

# Copies the local src code to the container
COPY ./main.go .

# Builds the go binaries
RUN go build -o main .

# Runs The Little Go-Http Server That Could
CMD ["/app/main"]