#
# based on https://github.com/shanty-social/baseos
#

arch?=aarch64
version?=3.15.0
# https://alpine.global.ssl.fastly.net/alpine/
mirror?=http://dl-cdn.alpinelinux.org/alpine
ver:=$(basename $(version))

# for relative scripts
cwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

PWD=$(shell pwd)

.PHONY: build
build:
	docker build runner -t runner
	docker run --privileged --rm -v /dev:/dev:ro -v ${PWD}:/runner -w /runner -e ALPINE_BRANCH=v$(ver) -e ALPINE_MIRROR=$(mirror) -e ARCH=$(arch) runner ./make-image

# report:
# 	@echo Alpine $(ver) $(arch)
# 	@echo Repo $(mirror)
# 	@echo CWD $(cwd)
