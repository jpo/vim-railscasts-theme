" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Dhruva Sagar <dhruva.sagar@gmail.com>
" Last Change:  07 Mar 2013
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.2
"
" This theme is based on Josh O'Rourke's & Nick Moffitt's Vim clone of the
" railscast textmate theme. The key thing I have done is merged both versions
" and ensured as much coherence as possible.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
" Brown        #BC9458
" Dark Blue    #6D9CBE
" Dark Green   #519F50
" Dark Orange  #CC7833
" Light Blue   #D0D0FF
" Light Green  #A5C261
" Tan          #FFC66D

hi Normal                    guifg=#E6E1DC guibg=#2B2B2B ctermfg=254 ctermbg=234
hi Search                    guifg=#000000 guibg=#5A647E ctermfg=0 ctermbg=60 cterm=NONE
hi Visual                    guibg=#5A647E ctermbg=60
hi LineNr                    guifg=#888888 ctermfg=242
hi Cursor                    guifg=#000000 guibg=#FFFFFF ctermfg=0 ctermbg=15
hi CursorLine                guibg=#333435 ctermbg=235 cterm=NONE
hi CursorLineNr              guifg=#bbbbbb ctermfg=248
hi StatusLine                guifg=#E6E1DC guibg=#414243 gui=NONE ctermfg=254 ctermbg=241 cterm=NONE
hi StatusLineNC              guibg=#303030 gui=NONE ctermbg=234 cterm=NONE
hi ColorColumn               guibg=#333435 ctermbg=235
hi! link CursorColumn ColorColumn
hi VertSplit                 guifg=#444444 guibg=#414243 gui=NONE ctermfg=241 ctermbg=238 cterm=NONE
hi SignColumn                guifg=#FFFFFF guibg=NONE ctermfg=255 ctermbg=NONE

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi! link FoldColumn SignColumn

" Invisible Characters
" ------------------
hi NonText                   guifg=#777777 gui=NONE cterm=NONE ctermfg=243
hi SpecialKey                guifg=#777777 gui=NONE cterm=NONE ctermfg=243

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE ctermfg=107 cterm=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE ctermfg=15 ctermbg=239 cterm=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE ctermfg=0 ctermbg=107 cterm=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE ctermfg=15 ctermbg=248 cterm=NONE

" Code constructs
" ---------------
hi Comment                   guifg=#BC9458 gui=italic ctermfg=137
hi Todo                      guifg=#BC9458 guibg=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Constant                  guifg=#6D9CBE ctermfg=73
hi Define                    guifg=#CC7833 ctermfg=130
hi Delimiter                 guifg=#519F50 ctermfg=22
hi Error                     guifg=#FFFFFF guibg=#990000 ctermfg=221 ctermbg=88
hi WarningMsg                guifg=#800000 guibg=NONE ctermfg=1 ctermbg=NONE
hi Function                  guifg=#FFC66D gui=NONE ctermfg=221 cterm=NONE
hi Identifier                guifg=#D0D0FF gui=NONE ctermfg=189 cterm=NONE
hi Include                   guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi Keyword                   guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi Macro                     guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi Number                    guifg=#A5C261 ctermfg=107
hi PreCondit                 guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi Statement                 guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi String                    guifg=#A5C261 ctermfg=107
hi Title                     guifg=#FFFFFF ctermfg=15
hi Type                      guifg=#DA4939 gui=NONE ctermfg=167 cterm=NONE
hi PreProc                   guifg=#E6E1DC ctermfg=254
hi Special                   guifg=#DA4939 ctermfg=167 

" Diffs
" -----
hi DiffAdd                   guifg=#E6E1DC guibg=#519F50 ctermfg=254 ctermbg=22
hi DiffDelete                guifg=#E6E1DC guibg=#660000 gui=bold ctermfg=254 ctermbg=52 cterm=bold
hi DiffChange                guifg=#FFFFFF guibg=#870087 ctermfg=15 ctermbg=90
hi DiffText                  guifg=#FFFFFF guibg=#FF0000 gui=bold ctermfg=15 ctermbg=9 cterm=bold

hi diffAdded                 guifg=#A5C261 ctermfg=107
hi diffNewFile               guifg=#FFFFFF guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi diffFile                  guifg=#FFFFFF guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold


" Ruby
" ----
hi pythonBuiltin             guifg=#6D9CBE gui=NONE ctermfg=73 cterm=NONE
hi rubyTodo                  guifg=#DA4939 guibg=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi rubyClass                 guifg=#FFFFFF ctermfg=15
hi rubyConstant              guifg=#DA4939 ctermfg=167
hi rubyInterpolation         guifg=#FFFFFF ctermfg=15
hi rubyBlockParameter        guifg=#D0D0FF ctermfg=189
hi rubyPseudoVariable        guifg=#FFC66D ctermfg=221
hi rubyStringDelimiter       guifg=#A5C261 ctermfg=107
hi rubyInstanceVariable      guifg=#D0D0FF ctermfg=189
hi rubyPredefinedConstant    guifg=#DA4939 ctermfg=167
hi rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189

" Mail
" ----
hi mailSubject               guifg=#A5C261 ctermfg=107
hi mailHeaderKey             guifg=#FFC66D ctermfg=221
hi mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

" Spell
" ----
hi SpellBad                  guifg=#D70000 guibg=NONE gui=undercurl ctermfg=160 ctermbg=NONE cterm=underline
hi SpellRare                 guifg=#D75F87 guibg=NONE gui=underline ctermfg=168 ctermbg=NONE cterm=underline
hi SpellCap                  guifg=#D0D0FF guibg=NONE gui=underline ctermfg=189 ctermbg=NONE cterm=underline
hi SpellLocal                guifg=#00FFFF guibg=NONE gui=undercurl ctermfg=51 ctermbg=NONE cterm=underline
hi MatchParen                guifg=#FFFFFF guibg=#005f5f ctermfg=15 ctermbg=23

" XML
" ---
hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179

" HTML
" ----
hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

" Vimoutliner
" -----------
hi OL1 guifg=white	ctermfg=white
hi OL2 guifg=red	ctermfg=red
hi OL3 guifg=lightblue	ctermfg=lightblue
hi OL4 guifg=violet	ctermfg=magenta
hi OL5 guifg=white	ctermfg=white
hi OL6 guifg=red	ctermfg=red
hi OL7 guifg=lightblue	ctermfg=lightblue
hi OL8 guifg=violet	ctermfg=magenta
hi OL9 guifg=white	ctermfg=white

" colors for tags
hi outlTags guifg=darkred	ctermfg=darkred

" color for body text
hi BT1 guifg=green	ctermfg=green
hi BT2 guifg=green	ctermfg=green
hi BT3 guifg=green	ctermfg=green
hi BT4 guifg=green	ctermfg=green
hi BT5 guifg=green	ctermfg=green
hi BT6 guifg=green	ctermfg=green
hi BT7 guifg=green	ctermfg=green
hi BT8 guifg=green	ctermfg=green
hi BT9 guifg=green	ctermfg=green

" color for pre-formatted text
hi PT1 guifg=blue	ctermfg=cyan
hi PT2 guifg=blue	ctermfg=cyan
hi PT3 guifg=blue	ctermfg=cyan
hi PT4 guifg=blue	ctermfg=cyan
hi PT5 guifg=blue	ctermfg=cyan
hi PT6 guifg=blue	ctermfg=cyan
hi PT7 guifg=blue	ctermfg=cyan
hi PT8 guifg=blue	ctermfg=cyan
hi PT9 guifg=blue	ctermfg=cyan

" color for tables 
hi TA1 guifg=darkviolet	ctermfg=cyan
hi TA2 guifg=darkviolet	ctermfg=cyan
hi TA3 guifg=darkviolet	ctermfg=cyan
hi TA4 guifg=darkviolet	ctermfg=cyan
hi TA5 guifg=darkviolet	ctermfg=cyan
hi TA6 guifg=darkviolet	ctermfg=cyan
hi TA7 guifg=darkviolet	ctermfg=cyan
hi TA8 guifg=darkviolet	ctermfg=cyan
hi TA9 guifg=darkviolet	ctermfg=cyan

" color for user text (wrapping)
hi UT1 guifg=darkred	ctermfg=cyan
hi UT2 guifg=darkred	ctermfg=cyan
hi UT3 guifg=darkred	ctermfg=cyan
hi UT4 guifg=darkred	ctermfg=cyan
hi UT5 guifg=darkred	ctermfg=cyan
hi UT6 guifg=darkred	ctermfg=cyan
hi UT7 guifg=darkred	ctermfg=cyan
hi UT8 guifg=darkred	ctermfg=cyan
hi UT9 guifg=darkred	ctermfg=cyan

" color for user text (non-wrapping)
hi UB1 guifg=darkgray	ctermfg=cyan
hi UB2 guifg=darkgray	ctermfg=cyan
hi UB3 guifg=darkgray	ctermfg=cyan
hi UB4 guifg=darkgray	ctermfg=cyan
hi UB5 guifg=darkgray	ctermfg=cyan
hi UB6 guifg=darkgray	ctermfg=cyan
hi UB7 guifg=darkgray	ctermfg=cyan
hi UB8 guifg=darkgray	ctermfg=cyan
hi UB9 guifg=darkgray	ctermfg=cyan

hi checkbox guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE
hi checkboxDone guifg=#87ff00 guibg=NONE gui=BOLD ctermfg=82 ctermbg=NONE cterm=BOLD
hi checkboxNotDone guifg=#005fdf guibg=NONE gui=BOLD ctermfg=26 ctermbg=NONE cterm=BOLD
