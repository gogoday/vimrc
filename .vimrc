
filetype indent on
filetype plugin indent on
set autoindent

execute pathogen#infect()

set nu
set incsearch
set backspace=indent,eol,start

set autoindent
set history=5000
set ruler
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

syntax on

autocmd FileType text setlocal textwidth=78

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

silent! map <F2> :NERDTreeToggle<CR>
set ffs=unix
set suffixesadd+=.js
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
