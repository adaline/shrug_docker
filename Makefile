all: build

IMAGE_NAME=shrug_example_app
IMAGE_VERSION=1.0
CONTAINER_NAME=shrug_example

.PHONY: build

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run:
	docker run --name $(CONTAINER_NAME) -d -p 3000:3000 -v `readlink --canonicalize .`:/app $(IMAGE_NAME):$(IMAGE_VERSION)

attach:
	docker exec -it $(CONTAINER_NAME) bash

console:
	docker exec -it $(CONTAINER_NAME) rails c

cleanup:
	docker rmi `docker images | grep '^<none>' | awk '{print $3}'`
