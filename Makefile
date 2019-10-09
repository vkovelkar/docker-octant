IMG_TAG=latest
IMG_NAME=vkovelkar/octant:${IMG_TAG}

release: build push

build:
	docker build -t ${IMG_NAME} .

push:
	docker push ${IMG_NAME}