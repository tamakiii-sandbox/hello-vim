.PHONY: help setup dependencies build bash clean

NAME := tamakiii-sandbox/hello-vim

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	vendor/vim/vim

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

vendor/vim/vim: vendor
	git clone git@github.com:vim/vim.git -b v8.2.1860 --single-branch --depth 1 $@

vendor:
	mkdir -p $@

clean:
	docker image rm $(NAME)
	rm -rf vendor/vim/vim
