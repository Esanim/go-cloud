FROM golang:latest

WORKDIR /app/Cloud-Native-Go
COPY . .
RUN go get "github.com/Esanim/go-cloud/api"
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .
RUN ["chmod", "+x", "Cloud-Native-Go"]

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT ["./Cloud-Native-Go"]
