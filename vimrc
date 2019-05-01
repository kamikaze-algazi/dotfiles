set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
set background=dark

syntax enable
filetype plugin indent on

let mapleader = ","
nnoremap <CR> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk

set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set confirm
set cursorline
set display+=lastline
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set listchars=tab:▸\ ,eol:¬
set mouse=a
set noerrorbells
set noswapfile
set noshowmatch
set number
set relativenumber
set ruler
set scrolloff=1
set shiftround
set shiftwidth=4
set showcmd
set showmode
set smartcase
set smarttab
set softtabstop=4
set tabpagemax=50
set tabstop=4
set timeoutlen=2000
set title
set ttimeoutlen=0
set ttyfast
set wildmenu
set wrap
