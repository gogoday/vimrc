

filetype indent on
filetype plugin indent on
set autoindent

" execute pathogen#infect()

set nu
set incsearch
set backspace=indent,eol,start

set history=5000
set ruler
set showcmd
set tabstop=2
set shiftwidth=2
set expandtab
set fileformat=unix

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

syntax on

"autocmd FileType * setlocal textwidth=78 formatoptions+=t

"set verbose=9
au BufReadPost *.js,*.html,*.ts,*.css set ff=unix

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" silent! map <F2> :NERDTreeToggle<CR>
set ffs=unix
set suffixesadd+=.js
set suffixesadd+=.ts
" set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" set foldmethod=indent
"
"

let g:syntastic_javascript_checkers = ['eslint']

map <F4><Esc>:%!python -m json.tool<CR>


set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

command! JsonFormat :execute '%!python -m json.tool'
  \ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)).encode(\"utf-8\"), sys.stdin.read()))"'
  \ | :set ft=javascript
  \ | :1


vmap '' :w !pbcopy<CR><CR>



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Shougo/vimproc.vim'
Plugin 'leafgarland/typescript-vim'
"Plugin 'godlygeek/tabular' | Plugin 'plasticboy/vim-markdown'
Plugin 'tasn/vim-tsx'
Plugin 'preservim/nerdtree'
Plugin 'zxqfl/tabnine-vim'
Plugin 'dense-analysis/ale'

" If you don't have nodejs and yarn
" use pre build
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''



:nmap ,fj :%!python -m json.tool <cr>
:map <C-n> :NERDTreeToggle<cr>

" call pathogen#helptags()
"
"execute pathogen#infect()

" 设置字体和大小
set guifont=Courier_new\ 123

iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

:map <F5> i{%<Esc>ea%}<Esc>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
let NERDTreeShowHidden=1

