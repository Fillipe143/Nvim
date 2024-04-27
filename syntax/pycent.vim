" Vim syntax file
" Language: Pycent

" Usage Instructions
" Put this file in .vim/syntax/pycent.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.zeb set filetype=pycent
"
if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z,_

" Language keywords
syntax keyword pycentKeywords def return if else for in

" Comments
syntax region pycentCommentLine start="#" end="$"   contains=pycentTodos

" String literals
syntax region pycentString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=pycentEscapes

" Boolean literals
syntax keyword pycentBoolean true false

" Escape literals \n, \r, ....
syntax match pycentEscapes display contained "\\[nr\"']"

" Number literals
syntax match pycentNumber "\d\+"

" Type names the compiler recognizes
syntax keyword pycentTypeNames int bool string

" Speciak characters
syntax match pycentSpecialChar "[\+\-\*\{\}\(\)<>=!,]"

" Functions
syntax match pycentFunction /\w\+\ze\s*(/
 
" Set highlights
highlight default link pycentKeywords Keyword
highlight default link pycentCommentLine Comment
highlight default link pycentString String
highlight default link pycentNumber Number
highlight default link pycentBoolean Boolean
highlight default link pycentFunction Function
highlight default link pycentTypeNames Type
highlight default link pycentEscapes SpecialChar
highlight default link pycentSpecialChar Special

let b:current_syntax = "pycent"
