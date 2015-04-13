all: build

IMAGE_NAME=shrug_example_app
IMAGE_VERSION=1.0
CONTAINER_NAME=shrug_example

.PHONY: build

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run:
	docker run --name $(CONTAINER_NAME) -it -p 127.0.0.1:3000:3000 -v `readlink --canonicalize .`:/app $(IMAGE_NAME):$(IMAGE_VERSION)

start:
	docker start -it $(CONTAINER_NAME)

attach:
	docker exec -it $(CONTAINER_NAME) bash

console:
	docker exec -it $(CONTAINER_NAME) rails c
