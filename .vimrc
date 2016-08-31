set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

call vundle#end() " required

set t_Co=256
set background=dark
set term=screen-256color

" Javascript Libraries Syntax:
let g:used_javascript_libs = 'jquery,underscore,angularjs,jasmine'

set autoindent
set backspace=indent,eol,start
set complete-=i

" PEP8 line limit:
set colorcolumn=80
set nrformats-=octal
set shiftround
set ttimeout
set ttimeoutlen=50
" Trying to speed up vim:
set ttyfast
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set synmaxcol=128

set encoding=utf-8
set tabstop=4
set number

" Highlights current line
set cursorline

" Trying to improve speed on osx:
set ttimeout
set ttimeoutlen=250
set notimeout
