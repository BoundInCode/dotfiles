" Liam Cain
" .vimrc

syntax on
set nocompatible

"Required for fish and vim to play together
if $SHELL =~ 'bin/fish'
	set shell=/bin/sh
endif

filetype plugin indent off
filetype indent off

" Basics {{{ "
set nohlsearch
set incsearch
set modelines=0
set tabstop=4
set history=1000
set wrap
set linebreak
set shiftwidth=4
set encoding=utf-8
set scrolloff=3
set cpoptions+=cpo-$
set autoindent
set noshowmode
set showcmd
set hidden
set wildmenu
set cursorline
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set ttimeout
set ttimeoutlen=100
set number
let mapleader = " "
let localleader="\\"
set ignorecase
set smartcase
set smarttab
set formatoptions+=j
set foldmethod=marker
set wildignore+=*/tmp/*,*.so,*.pyc,*pdf,*docx,*.swp,*.zip,*.indd,*.psd,*mp3,*.png,*jpg
set wildignore+=$HOME./Library/*
let g:netrw_list_hide =  '\.png$,\.jpg$,\.png$'
" }}} Basics "
" Extras {{{ "
" Resize splits when the window is resized
au VimResized * :wincmd =
set splitbelow
set splitright
set spelllang=en_us
set spellfile=$HOME/.vim/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md set filetype=markdown
" }}} Extras "
" Appearance {{{ "
set guioptions-=r
set guifont=Fira\ Mono:h14
set linespace=2
colorscheme iceberg
" colorscheme gotham

" }}} Appearance "
" Backups {{{1 "
set undofile
set backup                        " enable backups
set noswapfile                    " it's 2013, Vim.

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
" 1}}} "
" Plugins {{{1 "
call plug#begin()
" TPope {{{1 "
Plug 'tpope/vim-fugitive'        " for git in status bar
Plug 'tpope/vim-surround'        " add motions to add/change/remove quotes and braces
Plug 'tpope/vim-commentary'      " gcc
Plug 'tpope/vim-unimpaired'      " add [ movements
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'         " makes netrw a lot better
" 1}}} "
Plug 'SirVer/ultisnips'          " SNIPPETS
Plug 'honza/vim-snippets'        " the snippets themselves
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sgur/ctrlp-extensions.vim' " Adds ctrlp yank history and MRU
Plug 'FelikZ/ctrlp-py-matcher'   " ctrlp.speed++
" Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'         " error highlighting
" Plug 'mattn/emmet-vim'              " for html/css
" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'bling/vim-airline'         " those pretty bars at top and bottom
Plug 'junegunn/goyo.vim'         " For distraction-free writing
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'   " Press enter in visual mode...Magic
Plug 'sheerun/vim-polyglot'      " language pack
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'sjl/gundo.vim'             " Visual vim undo tree
Plug 'airblade/vim-gitgutter'    " Adds the symbols to the sidebar for git stuff
Plug 'suan/vim-instant-markdown' " Preview .md in browser
Plug 'troydm/zoomwintab.vim'     " Press ` to toggle zoom
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
call plug#end()
" 2}}} "
" Mappings {{{ "
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
inoremap <Down> <C-o>gj
inoremap <Up>   <C-o>gk

" Better home/end keys - synonymous to normal movement
nnoremap H ^
nnoremap L $
nnoremap ; :
nnoremap : ;
nnoremap Y y$
" inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap Q @q

" Uses 'very magic' regex search
nnoremap / /\v
vnoremap / /\v
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
"
" smarter 'Comment', 'String' paste
imap <D-V> ^O"+p

" for when you forget to sudo
cmap w!! w !sudo tee >/dev/null %

" better split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
vnoremap <C-h> <C-w>h
vnoremap <C-j> <C-w>j
vnoremap <C-k> <C-w>k
vnoremap <C-l> <C-w>l
" Mappings}}} "
" Plugins Settings/Mappings {{{ "
" Airline {{{ "
let g:airline_theme='luna'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#whitespace#enabled=0
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}} Airline "
" CTRL-P {{{ "
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 0
nnoremap <leader>r :CtrlPMRU<CR>
nnoremap <leader>y :CtrlPYankring<CR>
inoremap <C-y> <ESC>:CtrlPYankring<CR>
nnoremap <leader>f :CtrlPBuffer<CR>
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_yankring_limit = 20
" }}} CTRL-P "
" Easy-Align {{{ "
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:easy_align_ignore_groups = []
" }}} Easy-Align "
" Goyo {{{ "
function! s:goyo_enter()
  Limelight
  set linespace=5
  setlocal nocursorline
endfunction
function! s:goyo_leave()
  Limelight!
  set linespace=2
  setlocal cursorline
endfunction
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
nnoremap <leader>g :Goyo<CR>
" }}} Goyo "
" UltiSnips {{{ "
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsEnableSnipMate=0
nnoremap <localleader>e :UltiSnipsEdit<CR>
" }}} UltiSnips "
" Syntastic {{{ "
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
" }}} Syntastic "
" Vim-Session {{{1 "
let g:session_autosave='yes'
" Misc Plugins {{{1 "
nnoremap <Leader>u :GundoToggle<CR>
nnoremap <leader>e :ZoomWinTabToggle<CR>
let g:tex_flavor='latex'
" }}} Misc Plugins "
" }}} Plugins Settings/Mappings "
