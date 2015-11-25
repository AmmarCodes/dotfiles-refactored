set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'pbrisbin/vim-mkdir'
Plug 'bling/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/CSApprox'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'


" colorschemes
Plug 'vim-scripts/CSApprox'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'
" Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'w0ng/vim-hybrid'
" Plug 'yosiat/oceanic-next-vim'

" Vim customization
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
" Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'

" Editing
Plug 'junegunn/vim-easy-align',  { 'on': '<plug>(LiveEasyAlign)' }
Plug 'kien/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPTag'] }
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'terryma/vim-multiple-cursors'
Plug 'myusuf3/numbers.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Development
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim', { 'for': ['php', 'html', 'css', 'scss']}
Plug 'majutsushi/tagbar'
Plug 'soramugi/auto-ctags.vim'

Plug 'sheerun/vim-polyglot'

""""""""""""""""" HTML
Plug 'HTML-AutoCloseTag', { 'for': ['php', 'html'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['css', 'scss'] }
" Plug 'othree/html5.vim', { 'for': ['php', 'html'] }
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'scss'] }


""""""""""""""""" JS
" Plug 'pangloss/vim-javascript', { 'for': 'js' }
" Plug 'jelera/vim-javascript-syntax', { 'for': 'js' }
" Plug 'darthmall/vim-vue', { 'for': 'js' }
" Plug 'juvenn/mustache.vim', { 'for': ['js', 'mustache'] }

""""""""""""""""" PHP
" Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
" Plug 'StanAngeloff/php.vim',     { 'for': 'php' }
Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
Plug 'dericofilho/vim-phpfmt', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }


call plug#end()


"""""""""""""""""""""""""
" General config
"""""""""""""""""""""""""
let mapleader =','

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start


" Set local directories
"----------------------
set nobackup
set noswapfile
set backupdir=~/.nvim/backups
set directory=~/.nvim/swaps
set undodir=~/.nvim/undo
set tags=~/.nvim/tags

" colorscheme
"----------------------
syntax on
set background=dark
colorscheme onedark
set t_Co=256
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 11
    set guioptions-=T
    set nonu
    set linespace=3
endif
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"

set nowrap
set autoindent
set autoread
set incsearch       " Incremental search
" mouse active only in normal and visual mode
set mouse       =nv
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
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE
set number
set pastetoggle =<f2>


let g:CSApprox_loaded = 1

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
else
  if $TERM == 'xterm'
    set term=xterm-256color
  endif
endif

if &term =~ '256color'
  set t_ut=
endif

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F



"" Enable hidden buffers
set hidden

set noshowmode
set shortmess=a " Reduce pressing enter when opening a file



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
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
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

let g:phpfmt_config = "/home/ammar/dotfiles/php.tools.ini"
let g:phpfmt_on_save = get(g:, 'phpfmt_on_save', 0)

" Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ }

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"


" Syntastic
let g:syntastic_php_checkers = ['php']
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

" vim-javascript
let javascript_enable_domhtmlcss=1
let b:javascript_fold=0

" Mustache vim
let g:mustache_abbreviations = 1

" Emmet
" expand with tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"""""""""""""""""""""""
" Functions
"""""""""""""""""""""""
" Removes trailing spaces
if !exists("*TrimWhiteSpace")
    function TrimWhiteSpace()
        %s/\s*$//
        ''
        :endfunction
endif

" Fugitive for lightline
function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

"""""""""""""""""""""""""
" Key-bindings
"""""""""""""""""""""""""

" ; instead of shift+; to get the :
nnoremap ;            :
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
nnoremap <leader>w    :bw<cr>

" Escape
inoremap jf           <esc>

" Move lines up and down, Alt+Up or Alt+Down
nmap <A-Up> :m -2<cr>
nmap <A-Down> :m +1<cr>

" File Explorer
nnoremap <leader>b    :VimFilerExplore<cr>
nnoremap <cr>         :noh<cr><cr>

" Fix php file using php-cs-fixer
" autocmd BufRead *.php nmap <buffer> <leader>f :call PhpCsFixerFixFile()<cr><cr>
" Fix php file using php-cs-fixer
autocmd BufRead *.php nmap <buffer> <leader>f :!php-cs-fixer fix --config-file=./.php_cs %:p<cr><cr>


" n/vimrc editing/reloading
if has('nvim')
    nnoremap <leader>ve   :e ~/.nvimrc<cr>
    nnoremap <leader>vr   :source ~/.nvimrc<cr>
else
    nnoremap <leader>ve   :e ~/.vimrc<cr>
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

" Trim trailing spaces, using local functions inside n/vimrc
nnoremap <leader>ws :TrimWhiteSpace()<CR>

" Airline
let g:airline_theme="onedark"
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"""""""""""""""""""""""""
" Auto stuff
"""""""""""""""""""""""""
" Better Whitespace, automatically strip the whitespaces for the given file types
" autocmd FileType <php,javascript,html,css,sass,scss> autocmd BufWritePre <buffer> StripWhitespace

" NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

