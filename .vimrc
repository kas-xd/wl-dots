filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set relativenumber
set smartindent
set showmatch
set backspace=indent,eol,start
syntax on
let mapleader = " "
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>e :Ex<CR>
nnoremap <silent> <A-h> 5h
nnoremap <silent> <A-j> 5j
nnoremap <silent> <A-k> 5k
nnoremap <silent> <A-l> 5l
set laststatus=2
set statusline=%f%m%r%h%w\ [%{&ff}]\ [%{&fileencoding}]\ [%Y]\ %=%l:%c\ %p%%