if exists("b:current_syntax")
  finish
endif

syn clear

" Load bundled spice defaults
source $VIMRUNTIME/syntax/spice.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight Groups

"syn match spiceComment  "\*.*$" contains=@Spell
syn match spiceComment ";.*"

syn keyword spiceTodo TODO FIXME containedin=spiceComment

" hi link spiceTodo Comment

let b:current_syntax="spice"
