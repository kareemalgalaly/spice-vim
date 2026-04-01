if exists("b:current_syntax")
  finish
endif

syn clear

" Based on spice
source <sfile>:p:h/spice.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight Groups

syn match templateElement "{[^}]\+}" 				containedin=spiceComment
syn match templateBad     "\v\{(\}|[^}]*$)"
syn match templateVariabl "{[a-zA-Z0-9_\-+]\+}" 	containedin=spiceComment
syn match templateInnerTx "[a-zA-Z_][a-zA-Z0-9_]*" 	containedin=templateElement contained
syn match templateElement "\v\{(end\w+|else)\}" 	containedin=spiceComment
syn match templateString "'[^']*'" 					containedin=templateElement contained 
syn match templateString '"[^"]*"' 					containedin=templateElement contained 
" syn match templateNumber '\v\d*(\.\d+)?' 			containedin=templateElement contained 
syn match templateNumber '\v[ ''=+\-/(),]\zs(\d*\.)?\d+([munpfak]|[eE]-?\d+)?' containedin=templateElement contained
syn match templateSymbol "[<>=]=?" 					containedin=templateElement contained 
syn match templateCond   "+case" 					containedin=templateElement contained 

syn keyword templateBool False True contained containedin=templateElement
syn keyword templateCond if ifdef ifndef ifxst ifnxst else endif in contained containedin=templateElement
syn keyword templateCond match smatch case endmatch contained containedin=templateElement
syn keyword templateLoop for endfor contained containedin=templateElement
syn keyword templateDefn import default define contained containedin=templateElement
syn keyword templateType func eval contained containedin=templateElement
syn keyword templateError error assert contained containedin=templateElement

hi link templateBad     SpellBad
hi link templateElement Conceal	   " Comment 
hi link templateInnerTx Comment
hi link templateVariabl Changed    " Changed
hi link templateString  Changed    " Changed
hi link templateNumber  Changed    " Changed
hi link templateBool    Changed    " Changed
hi link templateSymbol  Identifier " Identifier Changed Delimiter
hi link templateCond    Identifier " Identifier Changed Delimiter
hi link templateLoop    Identifier " Identifier Changed Delimiter
hi link templateDefn    Include
hi link templateType    Normal
hi link templateError   Exception

let b:current_syntax="tspice"

