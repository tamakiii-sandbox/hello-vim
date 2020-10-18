syntax on

" Charsets
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,sjis,euc-jp,latin1
language en_US.UTF-8

set noswapfile
set nobackup
set noundofile
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
  autocmd FileType python setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
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
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
" Plug 'liuchengxu/vista.vim'
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

" prabirshrestha/asyncomplete.vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
" imap <c-space> <Plug>(asyncomplete_force_refresh)

" let g:asyncomplete_auto_completeopt = 0
" set completeopt=menuone,noinsert,noselect,preview
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
"
" set statusline+=%{NearestMethodOrFunction()}

" " By default vista.vim never run if you don't call it explicitly.
" "
" " If you want to show the nearest function in your statusline automatically,
" " you can add the following line to your vimrc
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
"
" let g:vista_executive_for = {
"             \ 'php': 'intelephense',
"             \ }
" let g:vista_ignore_kinds = ['Variable']
"
" if executable('intelephense')
"   au User lsp_setup call lsp#register_server({
"         \ 'name': 'intelephense',
"         \ 'cmd': {server_info->['intelephense', '--stdio']},
"         \ 'initialization_options': {"storagePath": "/tmp/intelephense", "clearCache": v:true},
"         \ 'whitelist': ['php'],
"         \ 'root_uri':{server_info->lsp#utils#path_to_uri(
"         \             lsp#utils#find_nearest_parent_file_directory(
"         \             lsp#utils#get_buffer_path(),
"         \             ['.git/']
"         \ ))},
"         \ 'workspace_config': { 'intelephense': {
"         \   'files.associations': ['*.php'],
"         \ }},
"         \ })
" endif

" Shortcuts
nmap ; :
nmap <ESC><ESC> :noh<CR>
nmap <LEADER>r<SPACE> :source $MYVIMRC<CR>

" color scheme
colorscheme SerialExperimentsLain
highlight ColorColumn ctermbg=1 guibg=lightgrey
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

