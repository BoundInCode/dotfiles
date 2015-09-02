" ######################################################################################################################
" ### Author : Liam Cain <dev@liamca.in>                                                                             ###
" ### Last Updated: 8-19-2015                                                                                        ###
" ######################################################################################################################

"Required for fish and vim to play together
if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
endif

" ======================================================================================================================
" 1.0 Plugin manager (Plug) settings
" ======================================================================================================================
"{{{

if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.nvim/plugged')

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.1 Plugin list
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ---------------------------------------------------------------------------------------------------------------------
" Language agnostic plugins
" ---------------------------------------------------------------------------------------------------------------------

" Most common languages file types (syntax, indenting, etc.)
Plug 'sheerun/vim-polyglot'
" Async Linter
Plug 'benekastah/neomake'
" Automatically closing stuff
Plug 'cohama/lexima.vim'
" Snippets support
" Plug 'SirVer/ultisnips'
" Commenting support (gc)
Plug 'tpope/vim-commentary'

" -----------------------------------------------------
" HTML/CSS/JS
" -----------------------------------------------------

" Sparkup, emmet alternative (<C-e> to expand expression)
Plug 'rstacruz/sparkup', { 'for': ['html', 'xhtml'] }
" CSS color highlighter
Plug 'chrisbra/Colorizer', {'on' : 'ColorToggle' }
" Color picker
Plug 'KabbAmine/vCoolor.vim', { 'on': 'VCoolor' }

" -----------------------------------------------------
" Additional Syntax support
" -----------------------------------------------------

" Syntax for fish config files
Plug 'dag/vim-fish', {'for' : 'fish' }
" JS libs syntax files, ember, angular, etc.
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'coffee'] }
" JS ES6 syntax highlighting
Plug 'othree/yajs.vim', { 'for': ['javascript', 'coffee'] }
" Spacebars syntax
Plug 'Slava/vim-spacebars', { 'for': ['html', 'xhtml'] }

" ---------------------------------------------------------------------------------------------------------------------
" Interface improving
" ---------------------------------------------------------------------------------------------------------------------

" Unite (Files, Buffers, Commands, etc. fuzzy searcher)
" Plug 'Shougo/unite.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
" Show undo tree
Plug 'simnalamburt/vim-mundo', { 'on': 'GundoToggle' }
" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" Shows current search match / total matches
Plug 'henrik/vim-indexed-search', { 'on':  'ShowSearchIndex' }
" Distraction-free writing
Plug 'junegunn/goyo.vim'
" Focus-mode
Plug 'junegunn/limelight.vim'
Plug 'troydm/zoomwintab.vim'  " Press ` to toggle zoom

" ---------------------------------------------------------------------------------------------------------------------
" External tools integration plugins
" ---------------------------------------------------------------------------------------------------------------------

" Fugitive
Plug 'tpope/vim-fugitive'
" add [ movements
Plug 'tpope/vim-unimpaired'
" Git log viewer
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
" Git and unite integration
" Plug 'kmnk/vim-unite-giti'
" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'
" Search in Dash.app
Plug 'rizzatti/dash.vim', {'on' : 'Dash' }

" ---------------------------------------------------------------------------------------------------------------------
" Text insertion/manipulation
" ---------------------------------------------------------------------------------------------------------------------

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Surround (cs"')
Plug 'tpope/vim-surround'
" RSI movements for vim
Plug 'tpope/vim-rsi'
" Sneak (f on steroids)
Plug 'justinmk/vim-sneak'
" Easy alignment
Plug 'junegunn/vim-easy-align'
" Safely editing in isolation
Plug 'ferranpm/vim-isolate', { 'on':  'Isolate' }
" Custom text objects
Plug 'kana/vim-textobj-user'
" Custom text based on indent (dii)
Plug 'kana/vim-textobj-indent'
" Custom text based on line (dal)
Plug 'kana/vim-textobj-line'
" Custom text based on line (>ae)
Plug 'kana/vim-textobj-entire'

" ---------------------------------------------------------------------------------------------------------------------
" Colorschemes
" ---------------------------------------------------------------------------------------------------------------------

" Pencil
Plug 'reedes/vim-colors-pencil'

" ---------------------------------------------------------------------------------------------------------------------
" Dependencies
" ---------------------------------------------------------------------------------------------------------------------

" Async processing (for Unite)
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Matchit enhances motions
Plug 'edsono/vim-matchit'
" More . repeat functionality
Plug 'tpope/vim-repeat'

" ---------------------------------------------------------------------------------------------------------------------
" Other
" ---------------------------------------------------------------------------------------------------------------------

" Intelligent buffer closing
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 End of plugin declaration
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#end()
"}}}

" ======================================================================================================================
" 2.0 Basic settings
" ======================================================================================================================
"{{{
colorscheme iceberg

set shell=/bin/zsh                          " Setting shell to zsh
"set number                                  " Line numbers
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set laststatus=2                            " Always show status line
set showmode                                " Always show mode
" set noshowmode
" set visualbell
set wildmenu                                " Better auto-complete of ex commands
set textwidth=120                           " Text width is 120 chars
set autoread                                " Automatically reload change files on disk
set guioptions-=r                           " Hide the scrollbar in GUI
set guifont=Fira\ Mono:h14                  " Pretty Font (used by gui)
set display+=lastline                       " Don't clip lines when wrap is set
set linebreak                               " Only used when wrap is enabled. Break at 'breakat' chars
set linespace=2                             " For GUIs only. added padding to each line.
set nocursorline                            " Dont set default cursor line
" set showtabline=0                         " Hide the tabline at the top of the screen
set cmdheight=1                             " Command line height
set pumheight=10                            " Completion window max size
set iskeyword-=_                            " Set underscore as a word separator
set iskeyword-=-                            " Set dash as a word separator
set formatoptions+=j                        " Remove comment on join
set formatoptions-=cro                      " Remove insert comment on return and 'o'
set timeoutlen=250                          " Setting ESC timeout
set ttimeout                                " Terminal timeout
set ttimeoutlen=100                         " Terminal timeout length
set incsearch                               " Incremental search
set modelines=0                             " Potential security hole.
set foldcolumn=0                            " Hide the column that has the hold numbers
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set undolevels=100                          " How many undo commands to remember
set clipboard+=unnamed                      " Use system clipboard
set history=1024                            " Number of things to remember in history
set nohlsearch                              " Don't highlight after search
set mat=2                                   " How many tenths of a second to blink when matching brackets
set magic                                   " For regular expressions turn magic on
set showmatch                               " Show matching brackets when text indicator is over them
set list                                    " Display white chars by default (use <F7>)
set spelllang=en_us                         " Set language to us English
set backspace=indent,eol,start              " Set default behavior of backspace
set spellfile=~/.nvim/dictionary.utf-8.add  " Use this file for spell checking
set nospell                                 " Set spelling off by default
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
set virtualedit=block                       " To be able to select past EOL in visual block mode
set nojoinspaces                            " No extra space when joining a line which ends with . ? !
set startofline                             " When doing thing like gg or G, will move cursor to start of line
set wrapscan                                " Search again from top when reached the bottom
set scrolloff=5                             " Scroll when closing to top or bottom of the screen
set updatetime=1000                         " Update time used to create swap file or other things
set mouse=                                  " Disable mouse integration

" -----------------------------------------------------
" 2.1 Intendation settings (2 spaces tabs)
" -----------------------------------------------------
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" -----------------------------------------------------
" 2.2 Split settings (more natural).
" -----------------------------------------------------
set splitbelow
set splitright

" -----------------------------------------------------
" 2.3 Turn backup off, since most stuff is in git
" -----------------------------------------------------
set nobackup
set nowb
set noswapfile

" -----------------------------------------------------
" 2.4 Persistent undo, for non-git projects
" -----------------------------------------------------
if has('persistent_undo')
  " Save undo history to file
  set undofile
  " Undo files in folder (this folder must exists!)
  set undodir=~/.nvim/tmp/undo//
  " Maximum number of undos
  set undolevels=100000
  " Save complete files for undo on reload if it has less lines than this
  set undoreload=100000
endif

" -----------------------------------------------------
" 2.5 Highlight whitespaces
" -----------------------------------------------------
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

" -----------------------------------------------------
" 2.6 Filetype settings
" -----------------------------------------------------
filetype off
filetype plugin on
filetype indent on

" -----------------------------------------------------
" 2.7 Folding settings, by default is disabled, use 'za'
" -----------------------------------------------------
set foldmethod=marker
set foldlevelstart=2
set fillchars="fold: "

" -----------------------------------------------------
" 2.8 Omni completion settings
" -----------------------------------------------------

" Dont show preview scratch buffers
set completeopt-=preview

" -----------------------------------------------------
" 2.9 Completion ignore list
" -----------------------------------------------------
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*/tmp/*,*.so,*.pyc,*pdf,*docx,*.swp,*.zip,*.indd,*.psd,*mp3,*.png,*jpg
set wildignore+=$HOME./Library/*
let g:netrw_list_hide ='\.png$,\.jpg$,\.png$'

" -----------------------------------------------------
" 2.10 Neovim specific settings
" -----------------------------------------------------
" Set an environment variable to use the t_SI/t_EI hack
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" Turn on true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"}}}

" ======================================================================================================================
" 3.0 Mapping settings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 3.1 Setting leaders
" -----------------------------------------------------
let mapleader="\<space>"
let localleader="\\"

" -----------------------------------------------------
" 3.2 Disabling arrow keys, space key, exmode enter
" with Q key, help with F1, etc.
" -----------------------------------------------------
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <bs> <nop>
nnoremap <delete> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <Space> <nop>
inoremap <F1> <nop>
nnoremap <F1> <nop>
nnoremap Q <nop>

" -----------------------------------------------------
" 3.3 Vim defaults overriding
" -----------------------------------------------------

" Intelligent window cycling
nmap <silent> <C-w><C-w> :call utils#intelligentCycling()<CR>

" Visual linewise up and down by default (and use gj gk to go quicker)
noremap j gj
noremap k gk
nnoremap gj 5j
nnoremap gk 5k

" When jump to next match also center screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when moving up and down
noremap <c-d> <c-d>zz
noremap <c-u> <c-u>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" Fast esc
inoremap jk <ESC>
inoremap kj <ESC>

" More logical Y (defaul was alias for yy)
nnoremap Y y$

" Esc terminal
tnoremap <ESC> <c-\><c-n>
tnoremap jk <c-\><c-n>
tnoremap kj <c-\><c-n>
tnoremap <esc><esc> <c-\><c-n>:bd!<CR>

" Automatically reselect and yank overpasted text in visual mode
xnoremap p pgvy

" x doesn't need to go into a register
xnoremap x  "_d

" disable Ex mode key and map it to something awesome
nnoremap Q @q

" replay macro for each line of a visual selection
xnoremap Q :normal @q<CR>

" repeat last command for each line of a visual selection
xnoremap . :normal .<CR>

" -----------------------------------------------------
" 3.4 Common tasks
" -----------------------------------------------------

" Quick save and close buffer
nnoremap <Leader>w :w<CR>
nnoremap <silent> <Leader>q :Sayonara!<CR>

" Reformat whole file
nnoremap <silent> <Leader>= mzgg=G`z

" -----------------------------------------------------
" 3.5 F-key actions
" -----------------------------------------------------

" Toggle spelling on and off
nnoremap <silent> <F4> :set spell!<CR> :set spell?<CR>
" Toggle white characters visibility
nnoremap <silent> <F7> :set list!<CR> :set list?<CR>

" -----------------------------------------------------
" 3.6 Window / Buffer management
" -----------------------------------------------------

" Windows resizing using arrow keys
nnoremap <silent> <Left> :vertical resize -1<CR>
nnoremap <silent> <Right> :vertical resize +1<CR>
nnoremap <silent> <Up> :resize +1<CR>
nnoremap <silent> <Down> :resize -1<CR>

" -----------------------------------------------------
" 3.7 Command abbrevations and mappings
" -----------------------------------------------------

" Quiting and saving all
cmap ww wqall
cmap qq qall

" Accepting case errors
cab W! w!
cab Q! q!
cab Wq wq
cab Wa wa
cab wQ wq
cab WQ wq
cab W w
cab Q q

" -----------------------------------------------------
" 3.7 Custom commands and functions
" -----------------------------------------------------

" Rename currecnt file
command! Rename :call utils#renameFile()<CR>

" Create new note
command! -nargs=1 Note :call utils#createNote(<f-args>)

" Open note
command! Notes :call utils#openNotes()

" Format JSON
command! FormatJSON %!python -m json.tool
"}}}

" ======================================================================================================================
" 4.0 Plugins settings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 4.2 Unite
" -----------------------------------------------------

" Matcher settings
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" call unite#custom#source('file_rec/async','sorters','sorter_rank')

" Track yank history
" let g:unite_source_history_yank_enable=1

" Use ag if available
" if executable('ag')
"   let g:unite_source_grep_command='ag'
"   let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C0'
"   let g:unite_source_grep_recursive_opt=''

"   " Set rec source command
"   let g:unite_source_rec_async_command =
"         \ ['ag', '--follow', '--nocolor', '--nogroup',
"         \  '--ignore', '.git', '--ignore', '.hg', '--ignore', '.svn', '--ignore', '.bzr',
"         \  '--ignore', '.meteor', '--ignore', '**/bower_components/',
"         \  '--hidden', '-g', '']
" endif

" Ignore wildignore files
" call unite#custom#source('file_rec', 'ignore_globs', split(&wildignore, ','))

" Custom profile
" call unite#custom#profile('default', 'context', {
"       \   'prompt': '» ',
"       \   'winheight': 15,
"       \ })

" Add syntax highlighting
" let g:unite_source_line_enable_highlight=1

" Custom unite menus
" let g:unite_source_menu_menus = {}

" Utils menu
" let g:unite_source_menu_menus.utils = {
"       \     'description' : 'Utility commands',
"       \ }
" let g:unite_source_menu_menus.utils.command_candidates = [
"       \       ['Color picker', 'VCoolor'],
"       \       ['Format JSON', 'FormatJSON'],
"       \       ['Generate Ctags', 'GenerateCT'],
"       \       ['Generate JS Ctags', 'GenerateJSCT'],
"       \       ['Generate Ruby/Rails Ctags', 'GenerateRailsCT'],
"       \       ['Rename file', 'Rename'],
"       \       ['Show notes', 'Notes'],
"       \       ['Show search status', 'ShowSearchIndex'],
"       \     ]

" Git menu
" let g:unite_source_menu_menus.git = {
"       \     'description' : 'Git commands',
"       \ }
" let g:unite_source_menu_menus.git.command_candidates = [
"       \       ['Stage', 'Gwrite'],
"       \       ['Status', 'Gstatus'],
"       \       ['Diff', 'Gvdiff'],
"       \       ['Commit', 'Gcommit'],
"       \       ['Revert', 'Gread'],
"       \       ['Log', 'Glog'],
"       \       ['Unite Log', 'Unite giti/log'],
"       \       ['Visual Log', 'Gitv'],
"       \     ]

" " Plug menu
" let g:unite_source_menu_menus.plug = {
"       \     'description' : 'Plugin management commands',
"       \ }
" let g:unite_source_menu_menus.plug.command_candidates = [
"       \       ['Install plugins', 'PlugInstall'],
"       \       ['Update plugins', 'PlugUpdate'],
"       \       ['Clean plugins', 'PlugClean'],
"       \       ['Upgrade vim-plug', 'PlugUpgrade'],
"       \     ]

" " Syntastic menu
" let g:unite_source_menu_menus.syntastic = {
"       \     'description' : 'Syntastic syntax checker commands',
"       \ }
" let g:unite_source_menu_menus.syntastic.command_candidates = [
"       \       ['Check current file', 'SyntasticCheck'],
"       \       ['Remove error markers', 'SyntasticReset'],
"       \       ['Current file info', 'SyntasticInfo'],
"       \     ]

" " My unite menu
" let g:unite_source_menu_menus.unite = {
"       \     'description' : 'Syntastic syntax checker commands',
"       \ }
" let g:unite_source_menu_menus.unite.command_candidates = [
"       \       ['Unite buffers', 'call utils#uniteBuffers()'],
"       \       ['Unite file search', 'call utils#uniteFileRec()'],
"       \       ['Unite grep', 'call utils#uniteGrep()'],
"       \       ['Unite history', 'call utils#uniteHistory()'],
"       \       ['Unite line search', 'call utils#uniteLineSearch()'],
"       \       ['Unite menu', 'call utils#uniteCustomMenu()'],
"       \       ['Unite registers', 'call utils#uniteRegisters()'],
"       \       ['Unite snippets', 'call utils#uniteSnippets()'],
"       \       ['Unite sources', 'call utils#uniteSources()'],
"       \       ['Unite tags', 'call utils#uniteTags()'],
"       \       ['Unite windows', 'call utils#uniteWindows()'],
"       \       ['Unite yank history', 'call utils#uniteYankHistory()'],
"       \     ]

" -----------------------------------------------------
" 4.3 Neomake (syntax checker)
" -----------------------------------------------------
let g:neomake_verbose = 0
autocmd BufWritePost *.js Neomake eslint
autocmd BufWritePost *.rb Neomake rubocop
autocmd BufWritePost *.html Neomake tidy
autocmd BufWritePost *.scss Neomake scsslint

" -----------------------------------------------------
" 4.5 Neovim terminal settings
" -----------------------------------------------------
let g:terminal_color_0  = '#FFFFFF'
let g:terminal_color_1  = '#F74150'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#268BD2'
let g:terminal_color_5  = '#FFFFFF'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#F74150'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#268BD2'
let g:terminal_color_13 = '#FFFFFF'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
augroup Terminal
    au!
    au TermOpen * let g:last_terminal_job_id = b:terminal_job_id
    au WinEnter term://* startinsert
    au WinEnter *pid:* call feedkeys('i')
augroup END

" -----------------------------------------------------
" 4.6 Ultisnips settings
" -----------------------------------------------------
let g:UltiSnipsUsePythonVersion=3

" -----------------------------------------------------
" 4.7 Gitgutter settings
" -----------------------------------------------------
let g:gitgutter_max_signs=9999

" -----------------------------------------------------
" 4.8 Vim JSX highlighting settings
" -----------------------------------------------------
let g:jsx_ext_required=0

" -----------------------------------------------------
" 4.9 Lightline settings
" -----------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'refresh',
      \ 'tab': {
      \   'active': [ 'tabnum', 'filename', 'modified' ],
      \   'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'capslock' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'capslock': '%{exists("*CapsLockStatusline")?CapsLockStatusline():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" -----------------------------------------------------
" 4.10 Vim sneak settings
" -----------------------------------------------------
let g:sneak#streak=1

" -----------------------------------------------------
" 4.11 Goyo settings
" -----------------------------------------------------
function! s:goyo_enter()
  set linespace=5
  set nocursorline
  Limelight
endfunction

function! s:goyo_leave()
  set linespace=2
  set cursorline
  Limelight!
endfunction

autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()
nnoremap <Leader>g :Goyo<CR>

" -----------------------------------------------------
" 4.11 Indexed search settings
" -----------------------------------------------------
let g:indexed_search_colors=0
let g:indexed_search_shortmess=1
let g:indexed_search_numbered_only=1
let g:indexed_search_mappings=0

" -----------------------------------------------------
" 4.12 Color picker settings
" -----------------------------------------------------
let g:vcoolor_disable_mappings=1
"}}}

" ======================================================================================================================
" 5.0 Plugin mappings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 5.2 Ultisnips
" -----------------------------------------------------
" Disable built-in cx-ck to be able to go backward
inoremap <c-x><c-k> <nop>
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsListSnippets='<c-l>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" -----------------------------------------------------
" 5.3 Capslock mappings
" -----------------------------------------------------
imap <C-L> <C-O><Plug>CapsLockToggle


" -----------------------------------------------------
" 5.4 Leader mappings
" -----------------------------------------------------
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>i :ZoomWinTabToggle<CR>
nnoremap <silent> <Leader>t :term fish<CR>
nnoremap <silent> <leader>a :FZFFiles<CR>
nnoremap <silent> <leader>r :FZFMru<CR>
nnoremap <silent> <Leader>l :FZFLines<CR>
nnoremap <silent> <Leader>f :FZFBuffers<CR>
" nnoremap <silent> <C-x> :vsplit<CR>
" nnoremap <silent> <C-v> :split<CR>
"}}}

" ======================================================================================================================
" 6.0 Color and highlighting settings
" ======================================================================================================================
"{{{
" Syntax highlighting
syntax on

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Remove underline in folded lines
hi Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
"}}}

" ======================================================================================================================
" 7.0 filetype specific settings and autocommands
" ======================================================================================================================
"{{{
autocmd FileType ruby,coffee,sass,scss,haml,vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType html,css,javascript,javascript.jsx,snippets setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

" Keywordprg settings
autocmd FileType vim setlocal keywordprg=:help

" Omni complete function settings
autocmd FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete

" make CSS omni-completion work for SASS and SCSS
autocmd BufNewFile,BufRead *.scss set ft=scss.css
autocmd BufNewFile,BufRead *.sass set ft=sass.css

" Remove trailing whitespaces automatically before save
autocmd BufWritePre * call utils#stripTrailingWhitespaces()

" Resize splits when the window is resized
autocmd VimResized * :wincmd =

" Make neovim terminal buffers unlisted
autocmd TermOpen * setlocal nobuflisted
"}}}

" ======================================================================================================================
" 8.0 Other stuff
" ======================================================================================================================
"{{{

" Source nvimrc on write
if has("autocmd")
  autocmd bufwritepost .nvimrc source $MYVIMRC
endif
" Load other scripts
if filereadable(expand("~/.nvim/scripts/utils.vim"))
  source ~/.nvim/scripts/utils.vim
else
  echo "Update path to utils scripts!"
endif
"}}}
