syntax on

" Charsets
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,sjis,euc-jp,latin1
language en_US.UTF-8

set noswapfile
set nobackup
set undofile
set colorcolumn=80

set nowrap
set noerrorbells
set laststatus=2
set noshowmode
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set iminsert=0
set imsearch=0
set clipboard=unnamed
set browsedir=current

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set smartcase
set backspace=indent,eol,start
set number
set ruler
set cmdheight=1
set showmatch
set title
set matchtime=3
set splitright

" set directory=~/.vim/swapfile
" if v:version > 730
"   set undodir=~/.vim/undo
" endif

set ignorecase
if v:version > 730
  set wildignorecase
endif
set wildmenu
set wildmode=list:longest,full
set hlsearch
set incsearch

" Config by filetype
augroup Filetype
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" Keys
let mapleader = ","

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'lu-ren/SerialExperimentsLain'
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
call plug#end()

" jremmen/vim-ripgrep
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

" preservim/nerdtree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" tcomment
nmap <leader>/ :TComment<cr>
vmap <leader>/ :TComment<cr>

" open-browser.vim
vmap <leader>o<space> <plug>(openbrowser-open)

" open-browser-github.vim
nmap <leader>og<space> :'<,'>OpenGithubFile<cr>

" vim-lsp
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

nmap ?? :LspHover<cr>
nmap !? :LspDocumentDiagnostics<cr>

" preservim/nerdtree
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  :'*',
    \ 'Staged'    :'+',
    \ 'Untracked' :'!',
    \ 'Renamed'   :'R',
    \ 'Unmerged'  :'=',
    \ 'Deleted'   :'D',
    \ 'Dirty'     :'X',
    \ 'Ignored'   :'?',
    \ 'Clean'     :'C',
    \ 'Unknown'   :'E'
    \ }

" Shortcuts
nmap ; :
nmap <ESC><ESC> :noh<CR>
nmap <LEADER>r<SPACE> :source $MYVIMRC<CR>

" color scheme
colorscheme SerialExperimentsLain
highlight ColorColumn ctermbg=1 guibg=lightgrey
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

