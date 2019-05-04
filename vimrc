" vim:foldmethod=marker:foldlevel=0

set nocompatible
set encoding=utf-8
scriptencoding utf-8
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'davidhalter/jedi-vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
set background=dark

syntax enable
filetype plugin indent on

let mapleader = ","
nnoremap <space> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-n> :tabn<CR>
nnoremap <C-p> :tabp<CR>
nnoremap <C-t> :tabe<space>
nnoremap gV `[v`]
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
nnoremap <CR> i<CR><Esc>

set autoindent
set autowrite
set autoread
set backspace=indent,eol,start
set cmdheight=2
set complete-=i
set confirm
set cursorline
set display+=lastline
set expandtab
set foldenable
set foldlevelstart=10
set foldmethod=indent
set foldnestmax=10
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set modelines=1
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
set t_Co=256
set t_ut=
set tabpagemax=50
set tabstop=4
set term=screen-256color
set timeoutlen=2000
set title
set ttimeoutlen=0
set ttyfast
set wildmenu
set wrap

let g:indentLine_char = '|'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 0
let g:indentLine_color_term = 239

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
