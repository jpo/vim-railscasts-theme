" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Dhruva Sagar <dhruva.sagar@gmail.com>
" Last Change:  10 April '2014
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      3.0
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

let s:pallete = {
      \ 'black':        {'gui': '#000000', 'cterm': 0},
      \ 'red':          {'gui': '#ff0000', 'cterm': 1},
      \ 'purple':       {'gui': '#800000', 'cterm': 5},
      \ 'lightred':     {'gui': '#ff0000', 'cterm': 9},
      \ 'darkgreen':    {'gui': '#005f00', 'cterm': 22},
      \ 'darkgreen_1':  {'gui': '#005f5f', 'cterm': 23},
      \ 'darkblue':     {'gui': '#005fdf', 'cterm': 26},
      \ 'green':        {'gui': '#008700', 'cterm': 28},
      \ 'lightblue':    {'gui': '#00ffff', 'cterm': 51},
      \ 'bloodred':     {'gui': '#5f0000', 'cterm': 52},
      \ 'lightpurple':  {'gui': '#5f5f87', 'cterm': 60},
      \ 'lightblue_1':  {'gui': '#5fafaf', 'cterm': 73},
      \ 'brightgreen':  {'gui': '#5fff00', 'cterm': 82},
      \ 'darkred':      {'gui': '#870000', 'cterm': 88},
      \ 'darkpurple':   {'gui': '#870087', 'cterm': 90},
      \ 'lightpurple_1':{'gui': '#8787ff', 'cterm': 105},
      \ 'lightgreen':   {'gui': '#87af5f', 'cterm': 107},
      \ 'lightgreen_1': {'gui': '#87d7af', 'cterm': 115},
      \ 'darkorange':   {'gui': '#af5f00', 'cterm': 130},
      \ 'darkorange_1': {'gui': '#af5f5f', 'cterm': 131},
      \ 'lightbrown':   {'gui': '#af875f', 'cterm': 137},
      \ 'orange':       {'gui': '#df0000', 'cterm': 160},
      \ 'darkpink':     {'gui': '#df5f5f', 'cterm': 167},
      \ 'darkpink_1':   {'gui': '#df5f87', 'cterm': 168},
      \ 'darkyellow':   {'gui': '#dfaf5f', 'cterm': 179},
      \ 'lightpink':    {'gui': '#dfdfff', 'cterm': 189},
      \ 'lightorange':  {'gui': '#ff8700', 'cterm': 208},
      \ 'lightpink_1':  {'gui': '#ffaf87', 'cterm': 216},
      \ 'yellow':       {'gui': '#ffdf5f', 'cterm': 221},
      \ 'bg':           {'gui': '#121212', 'cterm': 233},
      \ 'bg_1':         {'gui': '#1c1c1c', 'cterm': 234},
      \ 'bg_2':         {'gui': '#303030', 'cterm': 236},
      \ 'bg_3':         {'gui': '#3a3a3a', 'cterm': 237},
      \ 'darkgray':     {'gui': '#444444', 'cterm': 238},
      \ 'darkgray_1':   {'gui': '#585858', 'cterm': 240},
      \ 'gray':         {'gui': '#606060', 'cterm': 241},
      \ 'gray_1':       {'gui': '#666666', 'cterm': 242},
      \ 'gray_2':       {'gui': '#767676', 'cterm': 243},
      \ 'lightgray':    {'gui': '#a8a8a8', 'cterm': 248},
      \ 'off_white':    {'gui': '#e4e4e4', 'cterm': 254},
      \ 'white':        {'gui': '#ffffff', 'cterm': 255},
      \ 'NONE':         {'gui': 'NONE',    'cterm': 'NONE'},
      \}

function! s:colors(...)
  if !a:0 || a:0 > 3 | return {} | endif
  if a:0 == 1 && has_key(s:pallete, a:1)
    let fg = s:pallete[a:1]
    return {'guifg': fg.gui, 'ctermfg': fg.cterm}
  elseif a:0 == 2
    let col = {}
    if has_key(s:pallete, a:1)
      let fg = s:pallete[a:1]
      if has_key(fg, 'gui') | let col['guifg'] = fg['gui'] | endif
      if has_key(fg, 'cterm') | let col['ctermfg'] = fg['cterm'] | endif
    endif
    if has_key(s:pallete, a:2)
      let bg = s:pallete[a:2]
      if has_key(bg, 'gui') | let col['guibg'] = bg['gui'] | endif
      if has_key(bg, 'cterm') | let col['ctermbg'] = bg['cterm'] | endif
    endif
    return col
  elseif a:0 == 3 && !empty(a:3)
    return extend(s:colors(a:1, a:2), {'gui': a:3, 'cterm': a:3})
  endif
endfunction

function! s:stringify(col_dict)
  return join(map(items(a:col_dict), "join(v:val, '=')"))
endfunction

function! s:Hi(group, ...)
  let colors = call('s:colors', a:000)
  execute 'hi' a:group s:stringify(colors)
endfunction

call s:Hi('Normal', 'off_white', 'bg')
call s:Hi('Search', 'black', 'lightpurple')
call s:Hi('Visual', '', 'lightpurple')
call s:Hi('LineNr', 'gray_1')
call s:Hi('Cursor', 'black', 'white')
call s:Hi('CursorLine', '', 'bg_1', 'NONE')
call s:Hi('CursorLineNr', 'lightgray', '', 'NONE')
call s:Hi('ColorColumn', '', 'bg_1', 'NONE')
hi! link CursorColumn ColorColumn

call s:Hi('VertSplit', 'darkgray', 'bg', 'NONE')
call s:Hi('SignColumn', 'white', 'NONE')

" StatusLine
" ----------
call s:Hi('StatusLine', 'off_white', 'gray', 'NONE')
call s:Hi('StatusLineNC', 'darkgray_1', 'bg_2', 'NONE')

" Folds
" -----
call s:Hi('Folded', 'white', 'darkgray', 'NONE')
hi! link FoldColumn SignColumn

" Invisible Characters
" ------------------
call s:Hi('NonText', 'gray_2', '', 'NONE')
call s:Hi('SpecialKey', 'gray_2', '', 'NONE')

" Misc
" ----
" directory names and other special names in listings
call s:Hi('Directory', 'lightgreen', '', 'NONE')

" Popup Menu
" ----------
call s:Hi('Pmenu', 'white', 'darkgray', 'NONE')
call s:Hi('PmenuSel', 'black', 'lightgreen', 'NONE')
call s:Hi('PMenuSbar', 'white', 'lightpurple', 'NONE')
call s:Hi('PMenuThumb', 'white', 'lightgray', 'NONE')

" Code constructs
" ---------------
call s:Hi('Comment', 'lightbrown')
call s:Hi('Todo', 'darkpink', 'NONE', 'bold')
call s:Hi('Constant', 'lightblue_1')
call s:Hi('Error', 'yellow', 'darkred')
call s:Hi('WarningMsg', 'purple', 'NONE')
call s:Hi('Identifier', 'yellow', '', 'NONE')
call s:Hi('Keyword', 'darkorange', '', 'NONE')
call s:Hi('Number', 'lightgreen')
call s:Hi('Statement', 'darkorange', '', 'NONE')
call s:Hi('String', 'lightgreen')
call s:Hi('Title', 'white')
call s:Hi('Type', 'darkpink')
call s:Hi('PreProc', 'lightorange')
call s:Hi('Special', 'darkgreen')

" Diffs
" -----
call s:Hi('DiffAdd', 'off_white', 'darkgreen')
call s:Hi('DiffDelete', 'black', 'bloodred')
call s:Hi('DiffChange', 'white', 'darkpurple')
call s:Hi('DiffText', 'white', 'lightred')

call s:Hi('diffAdded', 'green')
call s:Hi('diffRemoved', 'red')
call s:Hi('diffNewFile', 'white', 'NONE', 'bold')
call s:Hi('diffFile', 'white', 'NONE', 'bold')

" Ruby
" ----
call s:Hi('rubyTodo', 'darkpink', 'NONE', 'bold')
call s:Hi('rubyClass', 'white')
call s:Hi('rubyConstant', 'darkpink')
call s:Hi('rubyInterpolation', 'white')
call s:Hi('rubyBlockParameter', 'lightpink')
call s:Hi('rubyPseudoVariable', 'yellow')
call s:Hi('rubyStringDelimiter', 'lightgreen')
call s:Hi('rubyInstanceVariable', 'lightpink')
call s:Hi('rubyPredefinedConstant', 'darkpink')
call s:Hi('rubyLocalVariableOrMethod', 'lightpink')

" Python
" ------
call s:Hi('pythonExceptions', 'lightpink_1')
call s:Hi('pythonDoctest', 'lightpurple_1')
call s:Hi('pythonDoctestValue', 'lightgreen_1')

" Mail
" ----
call s:Hi('mailEmail', 'lightgreen', '', 'italic')
call s:Hi('mailHeaderKey', 'yellow')
hi! link mailSubject mailHeaderKey

" Spell
" ----
call s:Hi('SpellBad', 'orange', 'NONE', 'undercurl')
call s:Hi('SpellRare', 'darkpink_1', 'NONE', 'underline')
call s:Hi('SpellCap', 'lightpink', 'NONE', 'underline')
call s:Hi('SpellLocal', 'lightblue', 'NONE', 'undercurl')
call s:Hi('MatchParen', 'white', 'darkgreen_1')

" XML
" ---
call s:Hi('xmlTag', 'darkyellow')
call s:Hi('xmlTagName', 'darkyellow')
call s:Hi('xmlEndTag', 'darkyellow')

" HTML
" ----
hi! link htmlTag              xmlTag
hi! link htmlTagName          xmlTagName
hi! link htmlEndTag           xmlEndTag

" Checkbox
" --------
call s:Hi('checkbox', 'bg_3', 'NONE', 'NONE')
call s:Hi('checkboxDone', 'brightgreen', 'NONE', 'bold')
call s:Hi('checkboxNotDone', 'darkblue', 'NONE', 'bold')
