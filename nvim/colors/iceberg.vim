" _________________________________________
" \_ _/ ____| ____| ___ \ ____| ___ \  ___/
"  | | |____| ____| ___ < ____| __  / |__ \
" /___\_____|_____|_____/_____|_| \_\_____/
"
"  cool-headed perspective for your coding
"
"
" File:       iceberg.vim
" Maintainer: cocopon <cocopon@me.com>
" Modified:   2014-06-09 16:11+0900
" License:    MIT


set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'iceberg'

hi Normal          ctermbg=234  ctermfg=252    guibg=#042B36  guifg=#c6c8d1  cterm=NONE      gui=NONE
hi Conceal         ctermbg=NONE ctermfg=252    guibg=NONE     guifg=#c6c8d1  cterm=NONE      gui=NONE
"hi! EndOfBuffer  ctermbg=234     ctermfg=NONE guibg=#042B36 guifg=#042B36

hi Comment         ctermbg=NONE ctermfg=242     guibg=NONE     guifg=#6b7089  cterm=NONE      gui=NONE
hi NonText         ctermbg=NONE ctermfg=236      guibg=NONE     guifg=#042B36  cterm=NONE      gui=NONE
hi Title           ctermbg=NONE ctermfg=231    guibg=NONE     guifg=#FFFFFF  cterm=NONE      gui=NONE
" hi! Title        ctermfg=216     gui=NONE    guifg=#e2a478

hi Constant        ctermbg=NONE ctermfg=130    guibg=NONE     guifg=#C5735E  cterm=NONE      gui=NONE
"hi! Constant     ctermfg=140     guifg=#a093c7
hi Function        ctermbg=NONE ctermfg=9      guibg=NONE     guifg=#CC6666  cterm=NONE      gui=NONE
"hi! Function     ctermfg=216     guifg=#e2a478
hi Identifier      ctermbg=NONE ctermfg=179    guibg=NONE     guifg=#E5C078  cterm=NONE      gui=NONE
"hi! Identifier   cterm=NONE      ctermfg=109 guifg=#89b8c2
hi PreProc         ctermbg=NONE ctermfg=109    guibg=NONE     guifg=#85A7A5  cterm=NONE      gui=NONE
"hi! PreProc      ctermfg=150     guifg=#b4be82
hi Special         ctermbg=NONE ctermfg=103    guibg=NONE     guifg=#7D8FA3  cterm=NONE      gui=NONE
" hi! Special      ctermfg=150     guifg=#b4be82
hi SpecialKey      ctermbg=NONE ctermfg=59     guibg=NONE     guifg=#4C5966  cterm=NONE      gui=NONE
" hi! SpecialKey   ctermbg=234     ctermfg=236 guibg=#003D4B guifg=#242940
hi Statement       ctermbg=NONE ctermfg=13     guibg=NONE     guifg=#A57A9E  cterm=NONE      gui=NONE
" hi! Statement    ctermfg=110     gui=NONE    guifg=#84a0c6
hi String          ctermbg=NONE ctermfg=107    guibg=NONE     guifg=#95B47B  cterm=NONE      gui=NONE
" hi! String       ctermfg=109     guifg=#89b8c2
hi Type            ctermbg=NONE ctermfg=179    guibg=NONE     guifg=#E5C078  cterm=NONE      gui=NONE
"hi! Type         ctermfg=109     gui=NONE    guifg=#89b8c2

hi Todo            ctermbg=NONE ctermfg=NONE   guibg=NONE     guifg=NONE     cterm=reverse   gui=reverse
hi Error           ctermbg=52   ctermfg=12     guibg=NONE     guifg=#AF5F5F  cterm=underline gui=reverse
"hi! Error        ctermbg=234     ctermfg=203 guibg=#003C4B guifg=#e27878
hi ErrorMsg        ctermbg=NONE ctermfg=9      guibg=NONE     guifg=#C5735E  cterm=NONE      gui=NONE
"hi! ErrorMsg     ctermbg=234     ctermfg=203 guibg=#003C4B guifg=#e27878
hi Question        ctermbg=NONE ctermfg=214    guibg=NONE     guifg=#FFAF00  cterm=NONE      gui=NONE
" hi! Question     ctermfg=150     guifg=#b4be82
hi ModeMsg         ctermbg=NONE ctermfg=249    guibg=NONE     guifg=#808080  cterm=NONE      gui=NONE
"hi ModeMsg         ctermbg=NONE ctermfg=249    guibg=NONE     guifg=#808080  cterm=NONE      gui=NONE
hi MoreMsg         ctermbg=NONE ctermfg=249    guibg=NONE     guifg=#808080  cterm=NONE      gui=NONE
"hi! MoreMsg      ctermfg=150     guifg=#b4be82
hi WarningMsg      ctermbg=NONE ctermfg=12     guibg=NONE     guifg=#7D8FA3  cterm=NONE      gui=NONE
"hi! WarningMsg   ctermbg=234     ctermfg=203 guibg=#003C4B guifg=#e27878

"hi DiffAdd         ctermbg=65   ctermfg=232    guibg=#5F875F  guifg=#080808  cterm=NONE      gui=NONE
hi DiffAdd         ctermbg=108   ctermfg=234    guibg=#042B36  guifg=#bec4b1  cterm=NONE      gui=NONE
"hi! DiffAdd      ctermbg=108     ctermfg=234 guibg=#555a47 guifg=#bec4b1
hi DiffChange      ctermbg=237  ctermfg=NONE   guibg=#042B36  guifg=NONE     cterm=NONE      gui=NONE
" hi! DiffChange   ctermbg=66      ctermfg=234 guibg=#445861 guifg=#adc1cb
hi DiffDelete      ctermbg=234  ctermfg=9      guibg=NONE     guifg=#CC6666  cterm=NONE      gui=NONE
" hi! DiffDelete   ctermbg=95      ctermfg=234 guibg=#673e43 guifg=#d1a8ad
hi DiffText        ctermbg=60   ctermfg=251    guibg=#042B36   guifg=#D0D0D0 cterm=NONE      gui=NONE
" hi! DiffText     cterm=NONE      ctermbg=116 ctermfg=234   gui=NONE      guibg=#89b8c2 guifg=#161821

hi helpLeadBlank   ctermbg=NONE ctermfg=NONE   guibg=NONE     guifg=NONE     cterm=NONE      gui=NONE
hi helpNormal      ctermbg=NONE ctermfg=NONE   guibg=NONE     guifg=NONE     cterm=NONE      gui=NONE

hi LineNr          ctermbg=NONE ctermfg=8      guibg=#111314  guifg=#3E4853  cterm=NONE      gui=NONE
" hi! LineNr       ctermbg=235     ctermfg=239 guibg=#003D4B guifg=#444C74
hi CursorLineNr    ctermbg=NONE ctermfg=243    guibg=NONE     guifg=#808080  cterm=NONE      gui=NONE
" hi! CursorLineNr ctermbg=237     ctermfg=253 guibg=#042B36 guifg=#cdd1e6

hi Pmenu           ctermbg=233  ctermfg=137    guibg=#171717  guifg=#E8A973  cterm=none      gui=NONE
" hi! Pmenu        ctermbg=236     ctermfg=251 guibg=#3d425b guifg=#c6c8d1
hi PmenuSel        ctermbg=234  ctermfg=196    guibg=#252525  guifg=#FF2A1F  cterm=bold      gui=bold
" hi! PmenuSel     ctermbg=240     ctermfg=255 guibg=#5b6389 guifg=#eff0f4
hi PmenuSbar       ctermbg=233  ctermfg=000    guibg=#333233  guifg=#000000  cterm=NONE      gui=none
" hi! PmenuSbar    ctermbg=236     guibg=#3d425b
hi PmenuThumb      ctermbg=235  ctermfg=137    guibg=NONE     guifg=#171717  cterm=none      gui=none
" hi! PmenuThumb   ctermbg=251     guibg=#c6c8d1
"
hi WildMenu        ctermbg=110  ctermfg=235    guibg=#8FAFD7  guifg=#141617  cterm=bold      gui=bold
" hi! WildMenu     ctermbg=255     ctermfg=234 guibg=#d4d5db guifg=#17171b

hi StatusLine      ctermbg=235  ctermfg=249    guibg=#303537  guifg=#B3B8C4  cterm=NONE      gui=NONE
" hi! StatusLine   cterm=reverse   ctermbg=234 ctermfg=245   gui=reverse   guibg=#17171b guifg=#818596 term=reverse
hi StatusLineNC    ctermbg=232  ctermfg=239    guibg=#1C1F20  guifg=#7C7F88  cterm=NONE      gui=italic
" hi! StatusLineNC cterm=reverse   ctermbg=238 ctermfg=233   gui=reverse   guibg=#3E445E guifg=#0F1117

hi Underlined      ctermbg=NONE ctermfg=66     guibg=NONE     guifg=#5F8787  cterm=NONE      gui=NONE
" hi! Underlined   cterm=underline ctermfg=110 gui=underline guifg=#84a0c6 term=underline
hi Ignore          ctermbg=NONE ctermfg=250    guibg=NONE     guifg=#BCBCBC  cterm=NONE      gui=NONE

hi Visual          ctermbg=236  ctermfg=NONE   guibg=#404040  guifg=NONE     cterm=NONE      gui=NONE
" hi! Visual       ctermbg=236     guibg=#272c42
hi VisualNOS       ctermbg=8    ctermfg=NONE   guibg=NONE     guifg=NONE     cterm=bold      gui=bold

hi FoldColumn      ctermbg=NONE ctermfg=242    guibg=#1C1C1C  guifg=#6C6C6C  cterm=NONE      gui=NONE
" hi! FoldColumn   ctermbg=235     ctermfg=239 guibg=#042B36 guifg=#444b71
hi Folded          ctermbg=NONE ctermfg=242    guibg=#1C1C1C  guifg=#6C6C6C  cterm=NONE      gui=NONE
" hi! Folded       ctermbg=235     ctermfg=245 guibg=#003D4B guifg=#686f9a
hi VertSplit       ctermbg=238  ctermfg=238    guibg=#0f1117  guifg=#0f1117  cterm=NONE      gui=NONE
" hi! VertSplit    ctermbg=233     ctermfg=233 guibg=#0f1117 guifg=#0f1117

hi IncSearch       ctermbg=9    ctermfg=0      guibg=#AF5F5F  guifg=#141617  cterm=NONE      gui=NONE
hi Search          ctermbg=2    ctermfg=232    guibg=#919652  guifg=#141617  cterm=NONE      gui=NONE

hi TabLine         ctermbg=232  ctermfg=249    guibg=#141617  guifg=#B3B8C4  cterm=NONE      gui=NONE
"hi! TabLine      cterm=NONE      ctermbg=245 ctermfg=234   gui=NONE guibg=#042B36 guifg=#042B36
hi TabLineFill     ctermbg=235  ctermfg=239    guibg=#303537  guifg=#303537  cterm=NONE      gui=NONE
"hi! TabLineFill  cterm=reverse   ctermbg=234 ctermfg=245   gui=NONE guibg=#042B36 guifg=#042B36
hi TabLineSel      ctermbg=145  ctermfg=0      guibg=#7D8FA3  guifg=#111314  cterm=NONE      gui=NONE
"hi! TabLineSel   cterm=NONE      ctermbg=234 ctermfg=252   gui=NONE guibg=#042B36 guifg=#042B36

hi Directory       ctermbg=NONE ctermfg=24     guibg=NONE     guifg=#5FAFAF  cterm=NONE      gui=NONE
hi! Directory    ctermfg=109     guifg=#89b8c2
hi MatchParen      ctermbg=NONE ctermfg=11     guibg=NONE     guifg=#E5C078  cterm=bold      gui=bold
hi! MatchParen   ctermbg=237     ctermfg=255 guibg=#3e445e guifg=#ffffff

hi SpellBad        ctermbg=52   ctermfg=9      guibg=#5F0000  guifg=#CC6666  cterm=NONE      gui=NONE
"hi! SpellBad     guisp=#e27878
hi SpellRare       ctermbg=53   ctermfg=13     guibg=#5F005F  guifg=#B294BB  cterm=NONE      gui=NONE
"hi! SpellRare    guisp=#a093c7
hi SpellLocal      ctermbg=24   ctermfg=14     guibg=#005F5F  guifg=#8ABEB7  cterm=NONE      gui=NONE
"hi! SpellLocal   guisp=#89b8c2
hi SpellCap        ctermbg=17   ctermfg=12     guibg=#00005F  guifg=#81A2BE  cterm=NONE      gui=NONE
"hi! SpellCap     guisp=#84a0c6
hi SignColumn    ctermbg=235     guibg=#042B36

"hi! Error        ctermbg=234     ctermfg=203 guibg=#003C4B guifg=#e27878
"hi! ErrorMsg     ctermbg=234     ctermfg=203 guibg=#003C4B guifg=#e27878
"hi! ExtraWhitespace ctermbg=242 guifg=#6b7089
"hi! Search       ctermbg=216     ctermfg=234 guibg=#e4aa80 guifg=#392313
"hi! StatusLine   cterm=reverse   ctermbg=234 ctermfg=245   gui=reverse   guibg=#17171b guifg=#818596 term=reverse
"hi! WildMenu     ctermbg=255     ctermfg=234 guibg=#d4d5db guifg=#17171b
"hi! diffAdded    ctermfg=150     guifg=#b4be82
"hi! diffRemoved  ctermfg=203     guifg=#e27878

hi link Boolean             Constant
hi link Character           Constant
hi link Number              Constant

hi link Float               Number

hi link Define              Preproc
hi link Include             Preproc
hi link Macro               Preproc
hi link PreCondit           PreProc

hi link Conditional         Statement
hi link Exception           Statement
hi link HelpCommand         Statement
hi link HelpExample         Statement
hi link Keyword             Statement
hi link Label               Statement
hi link Operator            Statement
hi link Repeat              Statement

hi link StorageClass        Type
hi link Structure           Type
hi link Typedef             Type

hi link Debug               Special
hi link Delimiter           Special
hi link SpecialChar         Special
hi link SpecialComment      Special
hi link Tag                 Special

" HTML
hi link htmlEndTag          htmlTagName
hi link htmlLink            Function
hi link htmlSpecialTagName  htmlTagName
hi link htmlTag             htmlTagName

" Rails
hi link rubyRailsARAssociationMethod  Statement
hi link rubyRailsARValidationMethod   Statement
hi link rubyRailsARMethod             Statement
hi link rubyRailsARCallbackMethod     Statement
hi link rubyRailsARClassMethod        Statement

" Diff
hi link diffAdded           String
hi link diffRemoved         Function
