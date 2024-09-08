GO_FILES = $(shell find . '(' -path '*/.*' -o -path './vendor' ')' -prune -o -name '*.go' -print | cut -b3-)
GO_PATHS =  $(shell go list -f '{{ .Dir }}' ./... | grep -E -v 'docs|cmd|mocks')

.PHONY: dod
dod: build test fmt lint

.PHONY: build
build:
	go build $(GO_PATHS)

.PHONY: test
test:
	go test $(GO_PATHS)

.PHONY: fmt
fmt:
	gofmt -s -w ${GO_FILES}
	gofumpt -l -w ${GO_FILES}
	goimports -w ${GO_PATHS}

.PHONY: lint
lint:
	golangci-lint run --config=.golangci.yml ./...
	make arch-lint

.PHONY: arch-lint
arch-lint:
	go-arch-lint check

.PHONY: mocks
mocks:
	rm -R mocks || true
	mockery
	make fmt

.PHONY: build-docker-api
build-docker-api:
	docker build -t logistic-api .

.PHONY: build-docker-neo4j
build-docker-neo4j:
	cd neo4j && bash build.sh

.PHONY: run-docker
run-docker:
	docker run -p 8083:8083 logistic-api

.PHONY: run
run:
	docker-compose up

.PHONY: initdb
initdb:
	cd neo4j && bash initdb.sh