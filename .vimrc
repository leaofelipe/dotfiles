set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jacoborus/tender'
Plugin 'itchyny/lightline.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tstelzer/welpe.vim'

call vundle#end()            " required
filetype plugin indent on    " required
let macvim_skip_colorscheme=1
colorscheme welpe
" set lighline theme
let g:lightline = { 'colorscheme': 'welpe' }

" Allow backspace in insert mode
set backspace=indent,eol,start

" Respect modeline in files
"set modeline
"set modelines=4

" Enable line numbers
set number
" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Make tabs as wide as four spaces
set tabstop=4

" Highlight searches
set hlsearch

" Show the cursor position
set ruler
" Don’t add empty newlines at the end of files
set binary
set noeol

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Show the (partial) command as it’s being typed
set showcmd
 
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Show the filename in the window titlebar
set title
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
