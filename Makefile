.PHONY: help deploy clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

deploy:
	ln -s $(PWD)/.vim ~/.vim
	ln -s $(PWD)/.vimrc ~/.vimrc

clean:
	rm -rf ~/.vim
	rm -rf ~/.vimrc
