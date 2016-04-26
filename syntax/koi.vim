if exists('b:current_syntax') | finish | endif

" Keywords
syn keyword koiTodo contained TODO FIXME XXX NOTE
syn keyword koiDeclKeyword func var struct
syn keyword koiKeyword if else endif
syn keyword koiType int float string
syn keyword koiStatement return

" Matches
syn match koiOp '\v\*'
syn match koiOp '\v\/' 
syn match koiOp '\v\+' 
syn match koiOp '\v\-' 
syn match koiOp '\v\(' 
syn match koiOp '\v\)'

syn match koiString display '\".*\"'

syn match koiComment '#.*$' contains=koiTodo
syn match koiIdent '[a-zA-Z][a-zA-Z0-9_]*'

syn match koiNumbers display transparent "\<\d\|\.\d" contains=koiFloat,koiInteger

syn match koiInteger display contained "[0-9][0-9]*"
syn match koiFloat display contained "[0-9]*\.[0-9]+"

let b:current_syntax = "koi"

" Highlighting
hi def link koiComment Comment
hi def link koiStatement Statement
hi def link koiDeclKeyword Structure
hi def link koiKeyword Keyword
hi def link koiNumbers koiNumbers
hi def link koiIdent Identifier
hi def link koiType Type
hi def link koiTodo Todo
hi def link koiOp Operator
hi def link koiString String
