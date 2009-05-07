" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <jorourke23@gmail.com> 
" License:     public domain
"
" This theme is based on the Railscasts Textmate theme [1]. I used 
" Jo Vermeulen's "vibrantink" theme for Vim [2] as my template for 
" creating this theme.
"
" [1] http://railscasts.com/about 
" [2] http://www.vim.org/scripts/script.php?script_id=1794 

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

highlight Normal                    guifg=#E6E1DC guibg=#2B2B2B
highlight Cursor                    guibg=#FFFFFF
highlight CursorLine                guibg=#333435
highlight LineNr                    guifg=#888888 guibg=#DEDEDE
highlight Search                    guibg=#5A647E
highlight Visual                    guibg=#5A647E

"rubyComment
highlight Comment                   guifg=#BC9458 gui=italic
highlight Todo                      guifg=#BC9458 guibg=NONE gui=italic

"rubyPseudoVariable
"nil, self, symbols, etc
highlight Constant                  guifg=#6D9CBE

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
highlight Define                    guifg=#CC7833

"rubyInterpolation
highlight Delimiter                 guifg=#519F50

"rubyError, rubyInvalidVariable
highlight Error                     guifg=#FFFFFF guibg=#990000

"rubyFunction
highlight Function                  guifg=#FFC66D gui=NONE

"rubyIdentifier
"@var, @@var, $var, etc
highlight Identifier                guifg=#D0D0FF gui=NONE

"rubyInclude
"include, autoload, extend, load, require
highlight Include                   guifg=#CC7833 gui=NONE

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
highlight Keyword                   guifg=#CC7833

"rubyInteger
highlight Number                    guifg=#A5C261

"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
highlight Statement                 guifg=#CC7833 gui=NONE

"rubyString
highlight String                    guifg=#A5C261

highlight Title                     guifg=#FFFFFF

"rubyConstant
highlight Type                      guifg=#DA4939 gui=NONE

highlight DiffAdd                   guifg=#E6E1DC guibg=#144212
highlight DiffDelete                guifg=#E6E1DC guibg=#660000

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

highlight xmlTag                    guifg=#E8BF6A
highlight xmlTagName                guifg=#E8BF6A
highlight xmlEndTag                 guifg=#E8BF6A
