FROM golang:1.19.2-alpine3.16

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o main ./cmd/main.go

EXPOSE 8080
CMD ["/app/main"]
