" Strip trailing spaces
function! utils#stripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Rename current file (from @grb - https://github.com/garybernhardt)
function! utils#renameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    execute ':saveas ' . new_name
    execute ':silent !rm ' . old_name
    redraw!
  endif
endfunction

function! utils#editVimrc()
  execute ':e ~/dotfiles/init.vim'
endfunction

" Simple notes management
function! utils#createNote(name)
  execute ':e ~/Notes/' . a:name . '.md'
endfunction

function! utils#openNotes()
  execute ':e ~/notes/'
endfunction


" FZF
command! Ls call fzf#run({
      \'source':  split(globpath('.', '**'), "\n"),
      \'sink' : 'e ',
      \'options' : '-m',
      \'window': 'enew'
      \})
