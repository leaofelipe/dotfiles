set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Bundle 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-commentary.git'
call vundle#end()

"FONTS AND ENCODING"
set encoding=utf8

" SPEED UP VIM
set ttyfast
set ttyscroll=2
set lazyredraw
set synmaxcol=128

"EXTRA CONFIG"
set backspace=indent,eol,start
set shiftwidth=2 " Indentation 4 spaces
set tabstop=2
set expandtab " Conrert tabs to spaces
set autoindent
set number " Show line number
set numberwidth=3
set showcmd
set autoread
set hlsearch
set ignorecase
set smartcase
set cursorline
set hidden
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" Enable mouse
if has('mouse')
  set mouse=a
endif

" Show the filename in the window titlebar
set title
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * NERDTree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

map <C-n> :NERDTreeToggle<CR>
map <C-k> :Commentary<CR>
map <C-t> :tabnew<CR>
