FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
COPY static ./static

RUN CGO_ENABLED=0 GOOS=linux go build -o /belajar-cicd-pemula

EXPOSE 3000

CMD ["/belajar-cicd-pemula"]