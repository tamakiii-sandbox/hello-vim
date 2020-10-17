.PHONY: help setup dependencies install clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type curl > /dev/null
	@type git > /dev/null
	@type rg > /dev/null

install: \
	~/.vim/autoload/plug.vim

~/.vim/autoload/plug.vim:
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

clean:
	rm -rf ~/.vim/autoload/plug.vim
