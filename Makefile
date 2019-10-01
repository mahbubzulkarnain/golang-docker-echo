init:
	go mod init
	go mod tidy

build:
	@echo "building..."
	docker build -f cmd/server/Dockerfile -t server .

up: default
	@echo "starting..."
	docker-compose up -d

logs:
	docker-compose logs -f

down:
	docker-compose down

test:
	go test -v -cover ./...

clean: down
	@echo "cleaning..."
	rm -f api
	docker system prune -f
	docker volume prune -f