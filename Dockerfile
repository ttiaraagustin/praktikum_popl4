FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download
COPY *.go ./
COPY static ./static

RUN go build -o /belajar-cicd-pemula

EXPOSE 3000

CMD ["/belajar-cicd-pemula"]