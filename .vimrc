syntax on

language en_US.UTF-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,sjis,euc-jp,latin1
set noswapfile
set nobackup
set noundofile
set nowrap
set noerrorbells
set noshowmode
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set iminsert=0
set imsearch=0
set clipboard=unnamed
set browsedir=current
set colorcolumn=80
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
set timeout timeoutlen=1000 ttimeoutlen=50
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
  autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" Keys
let mapleader = ","

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'lu-ren/SerialExperimentsLain'
Plug 'jremmen/vim-ripgrep'
Plug 'tomtom/tcomment_vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
call plug#end()

" vim-lsp
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

nmap ?? :LspHover<cr>
nmap ?! :LspDocumentDiagnostics<cr>

" CtrP
let g:ctrlp_working_path_mode = ''

" prabirshrestha/asyncomplete.vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" fzf.vim
let g:fzf_buffers_jump = 1
nmap <leader>f<space> :Files!<cr>
nmap <leader>g<space> :GFiles<cr>
nmap <leader>gs<space> :GFiles!?<cr>
nmap <leader>b<space> :Buffers<cr>

nmap <leader><tab> <plug>(fzf-maps-n)
imap <leader><tab> <plug>(fzf-maps-i)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Shortcuts
function! Esc()
  :noh
  :call popup_clear()
endfunction

nmap ; :
nmap <ESC><ESC> :call Esc()<CR>
nmap <LEADER>r<SPACE> :source $MYVIMRC<CR>

" color scheme
colorscheme SerialExperimentsLain
highlight ColorColumn ctermbg=1 guibg=lightgrey
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

