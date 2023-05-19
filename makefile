init: docker-down-clear docker-pull docker-build docker-up
up: docker-up
down: docker-down
clean: docker-down-clear
pull: docker-pull
build: docker-build

docker-up:
	docker compose up -d

docker-down:
	docker compose down --remove-orphans

docker-down-clear:
	docker compose down -v --remove-orphans

docker-pull:
	docker compose pull

docker-build:
	docker compose build
