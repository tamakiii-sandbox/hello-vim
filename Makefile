.PHONY: help install clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install:
	ln -s $(PWD)/.vim ~/.vim
	ln -s $(PWD)/.vimrc ~/.vimrc

clean:
	rm -rf ~/.vim
	rm -rf ~/.vimrc
