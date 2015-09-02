" Vim color file
" Converted from Textmate theme Refresh using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Refresh"

hi Cursor ctermfg=234 ctermbg=15 cterm=NONE guifg=#1e1e1e guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#465158 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=232 cterm=NONE guifg=NONE guibg=#131313 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=232 cterm=NONE guifg=NONE guibg=#323232 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#323232 gui=NONE
hi LineNr ctermfg=244 ctermbg=232 cterm=NONE guifg=#848484 guibg=#141414 gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#595959 guibg=#595959 gui=NONE
hi MatchParen ctermfg=110 ctermbg=NONE cterm=underline guifg=#88baea guibg=NONE gui=underline
hi StatusLine ctermfg=188 ctermbg=240 cterm=bold guifg=#ebebeb guibg=#595959 gui=bold
hi StatusLineNC ctermfg=188 ctermbg=240 cterm=NONE guifg=#ebebeb guibg=#595959 gui=NONE
hi Pmenu ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd2a7 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#465158 gui=NONE
hi IncSearch ctermfg=234 ctermbg=116 cterm=NONE guifg=#1e1e1e guibg=#80e6ea gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi Folded ctermfg=245 ctermbg=234 cterm=NONE guifg=#878787 guibg=#1e1e1e gui=NONE

hi Normal ctermfg=188 ctermbg=17 cterm=NONE guifg=#ebebeb guibg=#1e1e1e gui=NONE
hi Boolean ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi Character ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi Comment ctermfg=245 ctermbg=NONE cterm=NONE guifg=#878787 guibg=NONE gui=NONE
hi Conditional ctermfg=117 ctermbg=NONE cterm=NONE guifg=#96cbfe guibg=NONE gui=NONE
hi Constant ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi Define ctermfg=110 ctermbg=NONE cterm=NONE guifg=#88baea guibg=NONE gui=NONE
hi DiffAdd ctermfg=188 ctermbg=64 cterm=bold guifg=#ebebeb guibg=#44810b gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#890606 guibg=NONE gui=NONE
hi DiffChange ctermfg=188 ctermbg=23 cterm=NONE guifg=#ebebeb guibg=#1f3453 gui=NONE
hi DiffText ctermfg=188 ctermbg=24 cterm=bold guifg=#ebebeb guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=207 ctermbg=NONE cterm=bold guifg=#ff73fd guibg=NONE gui=bold
hi Function ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd2a7 guibg=NONE gui=NONE
hi Identifier ctermfg=114 ctermbg=NONE cterm=NONE guifg=#8acf94 guibg=NONE gui=NONE
hi Keyword ctermfg=110 ctermbg=NONE cterm=NONE guifg=#88baea guibg=NONE gui=NONE
hi Label ctermfg=116 ctermbg=NONE cterm=NONE guifg=#80e6ea guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=235 cterm=NONE guifg=#464b51 guibg=#282828 gui=NONE
hi Number ctermfg=207 ctermbg=NONE cterm=bold guifg=#ff73fd guibg=NONE gui=bold
hi Operator ctermfg=157 ctermbg=NONE cterm=NONE guifg=#aaffb1 guibg=NONE gui=NONE
hi PreProc ctermfg=110 ctermbg=NONE cterm=NONE guifg=#88baea guibg=NONE gui=NONE
hi Special ctermfg=188 ctermbg=NONE cterm=NONE guifg=#ebebeb guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=236 cterm=NONE guifg=#464b51 guibg=#323232 gui=NONE
hi Statement ctermfg=117 ctermbg=NONE cterm=NONE guifg=#96cbfe guibg=NONE gui=NONE
hi StorageClass ctermfg=114 ctermbg=NONE cterm=NONE guifg=#8acf94 guibg=NONE gui=NONE
hi String ctermfg=116 ctermbg=NONE cterm=NONE guifg=#80e6ea guibg=NONE gui=NONE
hi Tag ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd2a7 guibg=NONE gui=NONE
hi Title ctermfg=188 ctermbg=NONE cterm=bold guifg=#ebebeb guibg=NONE gui=bold
hi Todo ctermfg=245 ctermbg=NONE cterm=inverse,bold guifg=#878787 guibg=NONE gui=inverse,bold
hi Type ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e3b767 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=117 ctermbg=NONE cterm=NONE guifg=#96cbfe guibg=NONE gui=NONE
hi rubyFunction ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd2a7 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi rubyConstant ctermfg=229 ctermbg=NONE cterm=NONE guifg=#ffffb6 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=116 ctermbg=NONE cterm=NONE guifg=#80e6ea guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi rubyInclude ctermfg=110 ctermbg=NONE cterm=NONE guifg=#88baea guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi rubyControl ctermfg=117 ctermbg=NONE cterm=NONE guifg=#96cbfe guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi rubyOperator ctermfg=157 ctermbg=NONE cterm=NONE guifg=#aaffb1 guibg=NONE gui=NONE
hi rubyException ctermfg=110 ctermbg=NONE cterm=NONE guifg=#88baea guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=229 ctermbg=NONE cterm=NONE guifg=#ffffb6 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=245 ctermbg=NONE cterm=NONE guifg=#878787 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi htmlTag ctermfg=117 ctermbg=NONE cterm=bold guifg=#96cbfe guibg=NONE gui=bold
hi htmlEndTag ctermfg=117 ctermbg=NONE cterm=bold guifg=#96cbfe guibg=NONE gui=bold
hi htmlTagName ctermfg=117 ctermbg=NONE cterm=bold guifg=#96cbfe guibg=NONE gui=bold
hi htmlArg ctermfg=117 ctermbg=NONE cterm=bold guifg=#96cbfe guibg=NONE gui=bold
hi htmlSpecialChar ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=114 ctermbg=NONE cterm=NONE guifg=#8acf94 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd2a7 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi yamlAlias ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=116 ctermbg=NONE cterm=NONE guifg=#80e6ea guibg=NONE gui=NONE
hi cssURL ctermfg=147 ctermbg=NONE cterm=NONE guifg=#9eb4fa guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi cssColor ctermfg=114 ctermbg=NONE cterm=NONE guifg=#99cc99 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd7b1 guibg=NONE gui=NONE
hi cssClassName ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd7b1 guibg=NONE gui=NONE
hi cssValueLength ctermfg=207 ctermbg=NONE cterm=bold guifg=#ff73fd guibg=NONE gui=bold
hi cssCommonAttr ctermfg=223 ctermbg=NONE cterm=NONE guifg=#ffd2a7 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE