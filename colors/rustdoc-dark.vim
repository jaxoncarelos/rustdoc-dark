" If you are distributing this theme, please replace this comment
" with the appropriate license attributing the original VS Code
" theme author.


" rustdoc dark - A nice dark theme

" ==========> Reset
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'rustdoc-dark'

" ==========> Highlight function
function! s:h(face, guibg, guifg, ctermbg, ctermfg, gui)
  let l:cmd="highlight " . a:face
  
  if a:guibg != ""
    let l:cmd = l:cmd . " guibg=" . a:guibg
  endif

  if a:guifg != ""
    let l:cmd = l:cmd . " guifg=" . a:guifg
  endif

  if a:ctermbg != ""
    let l:cmd = l:cmd . " ctermbg=" . a:ctermbg
  endif

  if a:ctermfg != ""
    let l:cmd = l:cmd . " ctermfg=" . a:ctermfg
  endif

  if a:gui != ""
    let l:cmd = l:cmd . " gui=" . a:gui
  endif

  exec l:cmd
endfun


" ==========> Colors dictionary

" GUI colors dictionary (hex)
let s:hex = {}
" Terminal colors dictionary (256)
let s:bit = {}

let s:hex.color0="#353535"
let s:hex.color1="#DEDEDE"
let s:hex.color2="#626262"
let s:hex.color3="#3f3f3f"
let s:hex.color4="#676767"
let s:hex.color5="#494949"
let s:hex.color6="#7b7b7b"
let s:hex.color7="#808080"
let s:hex.color8="#535353"
let s:hex.color9="#fcfcfc"
let s:hex.color10="#e8e8e8"
let s:hex.color11="#585858"

let s:bit.color7="231"
let s:bit.color0="236"
let s:bit.color3="238"
let s:bit.color6="240"
let s:bit.color2="241"
let s:bit.color4="243"
let s:bit.color5="244"
let s:bit.color1="253"
let s:bit.color8="254"


" ==========> General highlights 
call s:h("Normal", s:hex.color0, s:hex.color1, s:bit.color0, s:bit.color1, "none")
call s:h("Visual", s:hex.color2, "", s:bit.color2, "", "none")
call s:h("ColorColumn", s:hex.color3, "", s:bit.color3, "", "none")
call s:h("LineNr", "", s:hex.color4, "", s:bit.color2, "none")
call s:h("CursorLine", s:hex.color5, "", s:bit.color3, "", "none")
call s:h("CursorLineNr", "", s:hex.color6, "", s:bit.color4, "none")
call s:h("CursorColumn", s:hex.color5, "", s:bit.color3, "", "none")
call s:h("VertSplit", "", s:hex.color7, "", s:bit.color5, "none")
call s:h("Folded", s:hex.color5, "", s:bit.color3, "", "none")
call s:h("Pmenu", s:hex.color8, s:hex.color9, s:bit.color6, s:bit.color7, "none")
call s:h("PmenuSel", s:hex.color3, s:hex.color10, s:bit.color3, s:bit.color8, "none")
call s:h("EndOfBuffer", s:hex.color0, s:hex.color11, s:bit.color0, s:bit.color6, "none")
call s:h("NonText", s:hex.color0, s:hex.color11, s:bit.color0, s:bit.color6, "none")


" ==========> Syntax highlights

highlight link cStatement Statement
highlight link cSpecial Special


" Generated using https://github.com/nice/themeforge
" Feel free to remove the above URL and this line.