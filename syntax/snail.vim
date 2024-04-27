" Vim syntax file
" Language: Snail

" Usage Instructions
" Put this file in .vim/syntax/snail.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.sn set filetype=snail

if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z,-,*,_,!,@

" Language keywords
syntax keyword snailKeywords fn return let mut immut temp macro free if else

" Comments
syntax region snailCommentLine start="//" end="$"   contains=snailTodos
syntax region snailCommentMultiLine start="/\*" end="\*/"   contains=snailTodos

" String literals
syntax region snailString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=snailEscapes

" Char literals
syntax region snailChar start=/\v'/ skip=/\v\\./ end=/\v'/ contains=snailEscapes

" Boolean literals
syntax keyword snailBoolean true false

" Escape literals \n, \r, ....
syntax match snailEscapes display contained "\\[nr\"']"

" Number literals
syntax match snailNumber "\d\+"

" Type names the compiler recognizes
syntax keyword snailTypeNames int bool String

" Speciak characters
syntax match snailSpecialChar "[\+\-\*\{\}\(\)<>=,:;\[\]|]"

" Functions
syntax region snailFunction start="fn" skip="\w" end="{"
 
" Set highlights
highlight default link snailKeywords Keyword
highlight default link snailCommentLine Comment
highlight default link snailCommentMultiLine Comment
highlight default link snailString String
highlight default link snailNumber Number
highlight default link snailBoolean Boolean
highlight default link snailTypeNames Type
highlight default link snailChar Character
highlight default link snailEscapes SpecialChar
highlight default link snailSpecialChar Special
highlight default link snailFunction Function

let b:current_syntax = "snail"

