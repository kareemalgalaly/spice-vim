if exists("b:current_syntax")
  finish
endif

syn clear

" Load bundled spice defaults
" source $VIMRUNTIME/syntax/spice.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight Groups

syn match spiceNumber  '\v\c[ ''=+\-/(),]\zs(\d*\.)?\d+(meg|[munpfak])?'
syn match spiceComment '^\*.*$' contains=@Spell
syn match spiceComment "\v(;|\$ |//).*"
syn match spiceCommand '\v^\s*\.\w+'
syn match spiceElement '\v\c^\s*[axcrvi]\w+'

syn keyword spiceTodo TODO FIXME containedin=spiceComment
syn keyword spiceDefine  let
syn keyword spiceOutput  wrdata plot 
syn keyword spiceCommand shell set let run compose cutout tran ac dc
syn keyword spiceCommand while dowhile repeat foreach if else end if echo
syn keyword spiceCommand exit

hi link spiceNumber  Float
hi link spiceComment Comment
hi link spiceCommand String
hi link spiceOutput  String
hi link spiceDefine  Include
hi link spiceElement Type

let b:current_syntax="spice"
