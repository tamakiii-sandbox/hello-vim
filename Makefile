.PHONY: help install clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	~/.vim \
	~/.vimrc \
	~/.vim/autoload/plug.vim

~/.vim:
	ln -s $(PWD)/.vim ~/.vim

~/.vimrc:
	ln -s $(PWD)/.vimrc ~/.vimrc

~/.vim/autoload/plug.vim:
	make -f vim.mk install

clean:
	rm -rf ~/.vim
	rm -rf ~/.vimrc
