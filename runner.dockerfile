FROM golang:1.21rc4-alpine3.18
WORKDIR /app
COPY . .

RUN apk add --no-cache libc6-compat 

RUN CGO_ENABLED=0 go build -o main main.go

ENTRYPOINT ['/app/main']
