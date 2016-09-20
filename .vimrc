set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Bundle 'kien/ctrlp.vim'
	Plugin 'scrooloose/nerdtree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Bundle 'reedes/vim-colors-pencil'
    Plugin 'chriskempson/base16-vim'
    Bundle 'morhetz/gruvbox'
    Bundle 'andrwb/vim-lapis256'
    Plugin 'mattn/emmet-vim'
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'tpope/vim-commentary.git'
    Plugin 'Yggdroot/indentLine'
call vundle#end()

colorscheme lapis256

set t_Co=256
set background=dark
set term=screen-256color
let base16colorspace=256

" Theme Configuration
let g:pencil_neutral_headings = 1
let g:pencil_neutral_code_bg = 0
let g:pencil_gutter_color = 1
let g:airline_theme = 'wombat'

" Javascript Syntax
let g:used_javascript_libs = 'underscore,backbone,angularjs'

if has('autocmd')
	filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
	syntax enable
endif


set autoindent
set backspace=indent,eol,start
set complete-=i
set number

" Remove Scratch window:
set completeopt-=preview
set showmatch
set showmode
set smarttab

let g:indentLine_enabled = 1
let g:indentLine_color_term = 239


" Trying to speed up vim:
set ttyfast
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set synmaxcol=128


set laststatus=2
set ruler
set showcmd
set wildmenu
set autoread
set encoding=utf-8 nobomb
set tabstop=4 shiftwidth=4 expandtab
set listchars=tab:▒░,trail:▓
set list

set hlsearch
set ignorecase
set smartcase

" Necessário para o powerline funcionar no MacVim
set guifont=Source\ Code\ Pro\ for\ Powerline:h11
set guifont=ProggyCleanTT\ 10

" Remove fugly scrollbars in MacVim
set guioptions-=r
set guioptions-=R
set guioptions-=L

" Highlights current line
set cursorline

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
endif

" Do not history when leavy buffer
set hidden
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_custom_ignore = {
	\ 'dir':  'node_modules\|DS_Store\|git\|bower_components',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }

" Trying to improve speed on osx:
set ttimeout
set ttimeoutlen=250
set notimeout
"
" set lighline theme
"let g:lightline = { 'colorscheme': 'welpe' }

" Show the filename in the window titlebar
set title
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NerdTree when pressed Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" Comment line like Sublime
map <C-_> :Commentary<CR>

" Go to tabs more quickly
" tab mappings
map <C-t> :tabnew<CR>
