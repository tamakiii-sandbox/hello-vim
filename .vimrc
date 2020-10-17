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
set undofile
set incsearch
set colorcolumn=80

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set iminsert=0
set imsearch=0
set clipboard=unnamed
set browsedir=current

"   Charsets
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,sjis,euc-jp,latin1
language en_US.UTF-8

"   Directories
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set directory=~/.vim/swapfile
if v:version > 730
  set undodir=~/.vim/undo
endif

"   Config by filetype
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
augroup Filetype
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"   Search
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set ignorecase
if v:version > 730
  set wildignorecase
endif
set wildmenu
set wildmode=list:longest,full
set hlsearch
set incsearch

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
Plug 'tomtom/tcomment_vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'

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
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

"   tcomment (https://github.com/tomtom/tcomment_vim)
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nmap <leader>/ :TComment<cr>
vmap <leader>/ :TComment<cr>

"   open-browser.vim (https://github.com/tyru/open-browser.vim)
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
vmap <leader>o<space> <plug>(openbrowser-open)

"   open-browser-github.vim (https://github.com/tyru/open-browser-github.vim)
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nmap <leader>og<space> :'<,'>OpenGithubFile<cr>

"   vim-lsp (https://github.com/prabirshrestha/vim-lsp)
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

nmap ?? :LspHover<cr>
nmap !? :LspDocumentDiagnostics<cr>

"   preservim/nerdtree
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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

"   airblade/vim-gitgutter
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set signcolumn=yes
set updatetime=250
let g:gitgutter_async = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_lines = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_set_sign_backgrounds = 1

highlight GitGutterAdd    guifg=#98c379 ctermfg=2
highlight GitGutterChange guifg=#61afef ctermfg=3
highlight GitGutterDelete guifg=#e06c75 ctermfg=1

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

