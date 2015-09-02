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

" Simple notes management
function! utils#createNote(name)
  execute ':e ~/Notes/' . a:name . '.md'
endfunction

function! utils#openNotes()
  execute ':e ~/notes/'
endfunction


" FZF
command! FZFMru call fzf#run({
            \'source': v:oldfiles,
            \'sink' : 'e ',
            \'options' : '-m --reverse',
            \'window': 'enew'
            \})

command! FZFFiles call fzf#run({
        \'source': 'find ~',
        \'sink' : 'e ',
        \'options' : '-m -x --reverse',
        \'window': 'enew'
        \})

command! FZFBuffers call fzf#run({
        \   'source':  reverse(<sid>buflist()),
        \   'sink':    function('<sid>bufopen'),
        \   'options': '+m --reverse',
        "\   'down':    len(<sid>buflist()) + 2,
        \   'window': 'enew',
        \ })

command! FZFLines call fzf#run({
\   'source':  <sid>buffer_lines(),
\   'sink':    function('<sid>line_handler'),
\   'options': '--reverse --extended --nth=3..',
\   'down':    '60%',
\   'window': 'enew'
\})

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction


function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf' keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

