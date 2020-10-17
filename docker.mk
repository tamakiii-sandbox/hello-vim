.PHONY: help setup dependencies build clean

NAME := tamakiii-sandbox/hello-vim

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type docker > /dev/null

build:
	docker build -t $(NAME) .

clean:
	docker image rm $(NAME)
