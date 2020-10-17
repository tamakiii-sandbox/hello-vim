syntax on

set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undo
set undofile
set incsearch
set colorcolumn=80

"   Keys
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
let mapleader = ","

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'lu-ren/SerialExperimentsLain'
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

"   jremmen/vim-ripgrep
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" ```
" :Rg <string|pattern>
" ```
" Setting	Default	Details
" g:rg_binary	rg	path to rg
" g:rg_format	%f:%l:%c:%m	value of grepformat
" g:rg_command	g:rg_binary --vimgrep	search command
" g:rg_highlight	false	true if you want matches highlighted
" g:rg_derive_root	false	true if you want to find project root from cwd
" g:rg_root_types	['.git']	list of files/dir found in project root
" g:rg_window_location	botright	quickfix window location

"   preservim/nerdtree
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
let NERDTreeShowHidden=1

"   Custom mapping
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nmap ; :
nmap <ESC><ESC> :noh<CR>
nmap <LEADER>r<SPACE> :source $MYVIMRC<CR>

"   Colorscheme
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
colorscheme SerialExperimentsLain
highlight ColorColumn ctermbg=1 guibg=lightgrey
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

