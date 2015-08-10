" Author: Liam Cain
" Last Updated: 8-9-2015
" .nvimrc

"Required for fish and vim to play together
if $SHELL =~ 'bin/fish'
	set shell=/bin/sh
endif

syntax on
filetype plugin indent off
filetype indent off

" Basics {{{ "
set nohlsearch
set incsearch
set modelines=0
set showtabline=0
set expandtab
set tabstop=4
set history=1000
set clipboard=unnamed
set wrap
set linebreak
set shiftwidth=4
set encoding=utf-8
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
" set relativenumber 
" set number
let mapleader = " "
let localleader="\\"
set ignorecase
set smartcase
set smarttab
set formatoptions+=j
set formatoptions-=cro
set foldmethod=marker
set foldcolumn=0
set wildignore+=*/tmp/*,*.so,*.pyc,*pdf,*docx,*.swp,*.zip,*.indd,*.psd,*mp3,*.png,*jpg
set wildignore+=$HOME./Library/*
let g:netrw_list_hide =  '\.png$,\.jpg$,\.png$'
set virtualedit=block
" }}} Basics "
" Extras {{{ "
" Resize splits when the window is resized
au VimResized * :wincmd =
set splitbelow
set splitright
set spelllang=en_us
set spellfile=$HOME/.vim/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md set filetype=pandoc
au BufEnter * silent! lcd %:p:h
if has('nvim')
    let g:terminal_color_0  = '#FFFFFF'
    " let g:terminal_color_0  = '#2e3436'
    let g:terminal_color_1  = '#F74150'
    let g:terminal_color_2  = '#4e9a06'
    let g:terminal_color_3  = '#c4a000'
    let g:terminal_color_4  = '#268BD2'
    let g:terminal_color_5  = '#6C71C4'
    let g:terminal_color_6  = '#0b939b'
    let g:terminal_color_7  = '#d3d7cf'
    let g:terminal_color_8  = '#555753'
    let g:terminal_color_9  = '#F74150'
    let g:terminal_color_10 = '#8ae234'
    let g:terminal_color_11 = '#fce94f'
    let g:terminal_color_12 = '#268BD2'
    let g:terminal_color_13 = '#6C71C4'
    let g:terminal_color_14 = '#00f5e9'
    let g:terminal_color_15 = '#eeeeec'
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
else
    set cpoptions+=cpo-$
endif
" }}} Extras "
" Appearance {{{ "
set guioptions-=r
set guifont=Fira\ Mono:h14
set display+=lastline
set linespace=2
set nocursorcolumn
set scrolljump=5
colorscheme iceberg
" }}} Appearance "
" Backups {{{1 "
set undofile
set backup                        " enable backups
set noswapfile

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
" TPope {{{2 "
Plug 'tpope/vim-fugitive'        " for git in status bar
Plug 'tpope/vim-surround'        " add motions to add/change/remove quotes and braces
Plug 'tpope/vim-commentary'      " gcc
Plug 'tpope/vim-unimpaired'      " add [ movements
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'         " makes netrw a lot better
" 1}}} "
Plug 'SirVer/ultisnips'          " SNIPPETS
Plug 'honza/vim-snippets'        " the snippets themselves
Plug 'osyo-manga/vim-over'       " Visual find/replace %s
Plug 'wellle/targets.vim'
Plug 'rizzatti/dash.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'benekastah/neomake'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'         " For distraction-free writing
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'   " Press enter in visual mode...Magic
" Plug 'sheerun/vim-polyglot'      " language pack
Plug 'simnalamburt/vim-mundo'
Plug 'airblade/vim-gitgutter' " Adds the symbols to the sidebar for git stuff
Plug 'chrisbra/Colorizer'   " Highlight hex colors
Plug 'troydm/zoomwintab.vim'  " Press ` to toggle zoom
Plug 'reedes/vim-colors-pencil'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
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
nnoremap Y y$
inoremap jk <ESC>
inoremap kj <ESC>

" replay macro for each line of a visual selection
xnoremap @q :normal @q<CR>
xnoremap @@ :normal @@<CR>
" repeat last command for each line of a visual selection
xnoremap . :normal .<CR>
" disable Ex mode key and map it to something awesome
nnoremap Q @@
xnoremap Q :normal @@<CR>
" repeat the last edit on the next [count] matches.
nnoremap <C-n> :normal n.<cr>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
"
" smarter 'Comment', 'String' paste
imap <D-V> ^O"+p

" un-join (split) the current line at the cursor position
nnoremap J i<c-j><esc>k$
" vaporize delete without overwriting the default register
nnoremap vd "_d
xnoremap x  "_d
nnoremap vD "_D
xnoremap P  "0p

nnoremap <Leader>ch :ColorToggle<CR>
nnoremap <silent> <Space><space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <space><space> zf<F37>

" search-replace
nnoremap g/r ms:<c-u>OverCommandLine<cr>%s/
xnoremap g/r ms:<c-u>OverCommandLine<cr>%s/\%V

" for when you forget to sudo
cmap w!! w !sudo tee >/dev/null %

" better split navigation
nnoremap <Leader>sp :split<CR>
nnoremap <Leader>vs :vsplit<CR>

nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l
vnoremap gh <C-w>h
vnoremap gj <C-w>j
vnoremap gk <C-w>k
vnoremap gl <C-w>l
if has('nvim')
    augroup Terminal
        au!
        au TermOpen * let g:last_terminal_job_id = b:terminal_job_id
        au WinEnter term://* startinsert
        au WinEnter *pid:* call feedkeys('i')
    augroup END
  tnoremap gj <c-\><c-n><c-w>j
  tnoremap gk <c-\><c-n><c-w>k
  tnoremap gh <c-\><c-n><c-w>h
  tnoremap gl <c-\><c-n><c-w>l
  nnoremap <leader>t :term fish<CR>
  tnoremap jk <c-\><c-n> 
  tnoremap kj <c-\><c-n> 
endif
" Mappings}}} "
" Plugins Settings/Mappings {{{ "
" FZF {{{2 "

command! FZFMru call fzf#run({
            \'source': v:oldfiles,
            \'sink' : 'e ',
            \'options' : '-m --reverse',
            \'window': 'enew',
            \})
command! FZFFiles call fzf#run({
        \'sink' : 'e ',
        \'options' : '-m --reverse',
        \'window': 'enew',
        \})
nnoremap <silent> <leader>a :FZFFiles<CR>
nnoremap <silent> <leader>r :FZFMru<CR>
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>f :call fzf#run({
            \   'source':  reverse(<sid>buflist()),
            \   'sink':    function('<sid>bufopen'),
            \   'options': '+m --reverse',
            \   'down':    len(<sid>buflist()) + 2
            \'window': 'enew',
            \ })<CR>

let g:neomake_verbose = 0
augroup Neomake
    au!
    au! BufWritePost * Neomake
augroup END
" }}} FZF "
" Lightline {{{2 "
let g:lightline = {
      \ 'colorscheme': 'refresh',
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode'
      \ }
\ }
function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFileformat()
  return ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return '' "winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
" }}} "
" Easy-Align {{{ "
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:easy_align_ignore_groups = []
" }}} Easy-Align "
" Goyo {{{ "
function! s:goyo_enter()
  set linespace=5
  set nocursorline
  colorscheme pencil
  Limelight
endfunction
function! s:goyo_leave()
  set linespace=2
  set cursorline
  colorscheme iceberg
  Limelight!
endfunction
autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()
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
" Vim-Session {{{2 "
let g:session_autosave='yes'

" Misc Plugins {{{2 "
nnoremap <Leader>u :GundoToggle<CR>
nnoremap ``> :ZoomWinTabToggle<CR>
let g:tex_flavor='latex'
let g:pencil_terminal_italics = 1
let g:pandoc#folding#fdc = 0
" }}} Misc Plugins "
" }}} Plugins Settings/Mappings "
