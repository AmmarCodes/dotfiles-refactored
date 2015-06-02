set nocompatible

set autoindent
set autoread


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
" colorscheme
Plug 'freeo/vim-kalisi'

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
call plug#end()

syntax on
colorscheme kalisi
set background=dark
set t_Co=256
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"


" General config
set incsearch       " Incremental search
" mouse active only in normal and visual mode
set mouse=nv
set pastetoggle=<F2>
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set ignorecase
set showmatch
set incsearch
set hls
set cursorline
set number

" show trailing whitespaces
set list
set listchars=tab:▸\ ,trail:¬,nbsp:.,extends:❯,precedes:❮



" VimFiler config
set fillchars=vert:│,fold:─
let g:vimfiler_tree_leaf_icon = "⋮"
let g:vimfiler_tree_opened_icon = "▼"
let g:vimfiler_tree_closed_icon = "▷"
