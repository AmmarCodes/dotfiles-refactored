set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'pbrisbin/vim-mkdir'
Plug 'ntpeters/vim-better-whitespace'
Plug 'itchyny/lightline.vim'

" colorschemes
Plug 'freeo/vim-kalisi'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'yosiat/oceanic-next-vim'

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'

" Editing
Plug 'junegunn/vim-easy-align',  { 'on': '<plug>(LiveEasyAlign)' }
Plug 'kien/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPTag'] }
Plug 'terryma/vim-multiple-cursors'
Plug 'myusuf3/numbers.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Development
Plug 'tomtom/tcomment_vim'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar',        { 'on': 'TagbarToggle' }
" Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'StanAngeloff/php.vim',     { 'for': 'php' }
Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
Plug 'HTML-AutoCloseTag', { 'for': ['php', 'html'] }

call plug#end()


"""""""""""""""""""""""""
" General config
"""""""""""""""""""""""""
let mapleader =','

" Set local directories
"----------------------

set backupdir=~/.nvim/backups
set directory=~/.nvim/swaps
set undodir=~/.nvim/undo

" colorscheme
syntax on
set background=dark
colorscheme OceanicNext
set t_Co=256
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"

set nowrap
set autoindent
set autoread
set incsearch       " Incremental search
" mouse active only in normal and visual mode
set mouse       =nv
set pastetoggle =<F2>
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else
set shiftwidth  =4
set softtabstop =4
set tabstop     =4
set expandtab
set ignorecase
set showmatch
set incsearch
set hls
set cursorline
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
set number
set pastetoggle =<f3>


" always ignore these files
set wildignore+=*/vendor/**,*/wordpress/**,*/node_modules/**,*/nbproject/**

" Add ability to center the view on the last line
set scrolloff   =4
set sidescroll  =5


" show trailing whitespaces
set list
set listchars   =tab:▸\ ,trail:¬,nbsp:.,extends:❯,precedes:❮



"""""""""""""""""""""""""
" Plugins config
"""""""""""""""""""""""""
" VimFiler config
set fillchars                   =vert:│,fold:─
let g:vimfiler_tree_leaf_icon   ="⋮"
let g:vimfiler_tree_opened_icon ="▼"
let g:vimfiler_tree_closed_icon ="▷"

" CtrlP
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_working_path_mode = 0 "2  Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open<CR>
let g:ctrlp_extensions = ['dir']
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_cmd = 'CtrlPMixed'
if executable('ag')
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command =
        \ 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore .git
        \ --ignore .svn
        \ --ignore .hg
        \ --ignore .DS_Store
        \ --ignore "**/*.pyc"
        \ -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" PHP-CS-Fixer
let g:php_cs_fixer_verbose = 1
let g:php_cs_fixer_config_file = "~/.php_cs"
let g:php_cs_fixer_enable_default_mapping = 0

" Lightline
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night_Eighties',
      \ }

"""""""""""""""""""""""""
" Key-bindings
"""""""""""""""""""""""""

" Buffers
nnoremap [b           :bprevious<cr>
nnoremap ]b           :bnext<cr>
nnoremap [B           :bfirst<cr>
nnoremap ]B           :blast<cr>

" Tabs
nnoremap [t           :tabprevious<cr>
nnoremap ]t           :tabnext<cr>
nnoremap [T           :tabfirst<cr>
nnoremap ]T           :tablast<cr>
nnoremap <leader>t    :tabnew<cr>
nnoremap <leader>w    :tabclose<cr>

" Escape
inoremap jf           <esc>

" Move lines up and down, Alt+Up or Alt+Down
nmap <A-Up> :m -2<cr>
nmap <A-Down> :m +1<cr>

" File Explorer
nnoremap <leader>b    :VimFilerExplorer<cr>
nnoremap <cr>         :noh<cr><cr>

" Fix php file using php-cs-fixer
" autocmd BufRead *.php nmap <buffer> <leader>f :call PhpCsFixerFixFile()<cr><cr>
" Fix php file using php-cs-fixer
autocmd BufRead *.php nmap <buffer> <leader>f :!php-cs-fixer fix --config-file=./.php_cs %:p<cr><cr>


" n/vimrc editing/reloading
if has('nvim')
    nnoremap <leader>ve   :tabnew ~/.nvimrc<cr>
    nnoremap <leader>vr   :source ~/.nvimrc<cr>
else
    nnoremap <leader>ve   :tabnew ~/.vimrc<cr>
    nnoremap <leader>vr   :source ~/.vimrc<cr>
endif

" Beginning/ending of the current file, go to it, center the view, go to
" visual mode
nnoremap gg           ggzv
nnoremap G            Gzv

" plugins: vim-easy-align {{{2
vmap <cr>      <plug>(LiveEasyAlign)

" Tagbar Toggle
nnoremap <f8>         :TagbarToggle<cr>

" CtrlP
map <C-p> :CtrlP<cr>

" Numbers
nnoremap <F3> :NumbersToggle<CR>


"""""""""""""""""""""""""
" Auto stuff
"""""""""""""""""""""""""
" Better Whitespace, automatically strip the whitespaces for the given file types
autocmd FileType <php,javascript,html,css,sass,scss> autocmd BufWritePre <buffer> StripWhitespace

