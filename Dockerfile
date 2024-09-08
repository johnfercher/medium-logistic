# stage de build
FROM golang:1.23.0 AS build
WORKDIR /app
COPY . /app
RUN CGO_ENABLED=0 GOOS=linux go build -o api cmd/api/main.go

# stage imagem final
FROM scratch
WORKDIR /app
COPY --from=build /app ./
EXPOSE 8083
CMD [ "./api", "env=docker" ]