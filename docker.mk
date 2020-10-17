.PHONY: help setup dependencies build bash clean

NAME := tamakiii-sandbox/hello-vim

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type docker > /dev/null

build:
	docker build -t $(NAME) .

bash:
	docker run \
		-it \
		--rm \
		-v $(PWD):/work \
		-w /work \
		$(NAME) \
		bash

clean:
	docker image rm $(NAME)
