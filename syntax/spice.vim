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

"hi link inlineComment Comment

let b:current_syntax="spice"
