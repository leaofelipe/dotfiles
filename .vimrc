set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Bundle 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'tpope/vim-commentary.git'
    Plugin 'vim-airline/vim-airline'
    Plugin 'lxmzhv/vim.git'
    Plugin 'othree/yajs.vim'    
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'hauleth/blame.vim'
    Plugin 'Yggdroot/indentLine'
	  Plugin 'vim-syntastic/syntastic'
    Plugin 'zcodes/vim-colors-basic.git'
    Plugin 'shattered/vimcolors.git'
    Plugin 'bounceme/base.vim.git'
    Plugin 'kristijanhusak/vim-hybrid-material'
    Plugin 'andrwb/vim-lapis256'
    Plugin 'crusoexia/vim-monokai'
    Plugin 'gregsexton/Muon.git'
call vundle#end()

"FONTS AND ENCODING"
set encoding=utf8

" SPEED UP VIM
set ttyfast
set ttyscroll=2
set lazyredraw
set synmaxcol=128

"COLORSCHEME"
set t_Co=256
set background=dark
"set termguicolors
colorscheme monokai
syntax enable
let g:indentLine_color_term = 239
let g:enable_bold_font = 1
set ruler
highlight LineNr ctermfg=grey term=NONE

"AIRLINE CONFIG
let g:airline_powerline_fonts=1

"JAVASCRIPT LIBRARIES"
let g:used_javascript_libs = 'underscore,backbone,angularjs,angularui,socketio,express,react'

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Set Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']

map <C-n> :NERDTreeToggle<CR>
map <C-k> :Commentary<CR>
map <C-t> :tabnew<CR>
