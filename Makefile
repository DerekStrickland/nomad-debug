.PHONY: dev
dev:
	@echo "==> Building nomad-debug..."
	@go build -o bin/nomad-debug

.PHONY: docker
docker:
	@echo "==> Building	nomad-debug docker image..."
	@docker build --tag nomad-debug .
