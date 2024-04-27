if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z,-,*,_,!,@

" Language keywords
syntax match garbageKeywords "[yzrmupvtx]\|[sl][bwdq]\?"

" Comments
syntax region porthCommentLine start="//" end="$"   contains=porthTodos

" String literals
syntax region garbageString start=/x\v"/ skip=/\v\\./ end=/\v"/ contains=garbageEscapes
syntax region garbageChar start="x'" end="'" contains=garbageEscapes

" Escape literals \n, \r, ....
syntax match garbageSpecialChars "[+-\*/$\{\}\[\]\(=<>!&|^.@]"
syntax match garbageEscapes display contained "\\."

" Number literals
syntax match garbageNumber "x-\?\d\+"

" Function literals
syntax region garbageFunction start="#" end="%"
"
" Identifier
"syntax match garbageIdentifier "\(%.\+#\)\|\(_.\+,\)"
syntax region garbageIdentifier start="%" end="#"
syntax region garbageVariables start="'" end="'"

" Comments
syntax region garbageComment start="," end=",\|$"

syntax region garbageImport start=/i\v"/ skip=/\v\\./ end=/\v"/ contains=garbageEscapes

" Set highlights
highlight default link garbageKeywords Keyword
highlight default link garbageComment Comment
highlight default link garbageString String
highlight default link garbageChar String
highlight default link garbageEscapes Special
highlight default link garbageNumber Number
highlight default link garbageFunction Function
highlight default link garbageIdentifier Identifier
highlight default link garbageVariables Identifier
highlight default link garbageImport Include
highlight default link garbageSpecialChars Special
let b:current_syntax = "garbage"
