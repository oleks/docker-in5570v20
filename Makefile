.PHONY: build interact

name:=$(shell basename $(CURDIR))
version:=0.1
tag:=$(name):v$(version)

build: Dockerfile Makefile
	docker build \
	  --tag $(tag) \
	  .

interact: build Dockerfile Makefile
	docker run \
	  --interactive --tty --rm \
	  $(tag)
