PWD=$(shell pwd)

.PHONY: build
build:
	docker build runner -t runner
	docker run --privileged --rm -v /dev:/dev:ro -v ${PWD}:/runner -w /runner -e ALPINE_BRANCH=v3.15 -e ALPINE_MIRROR=http://dl-cdn.alpinelinux.org/alpine -e ARCH=aarch64 runner ./make-image
