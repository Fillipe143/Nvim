" Vim syntax file
" Language: Zebra

" Usage Instructions
" Put this file in .vim/syntax/zebra.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.zeb set filetype=zebra

if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z,-,*,_,!,@

" Language keywords
syntax keyword zebraKeywords fn return if else

" Comments
syntax region zebraCommentLine start="//" end="$"   contains=zebraTodos

" String literals
syntax region zebraString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=zebraEscapes

" Char literals
syntax region zebraChar start=/\v'/ skip=/\v\\./ end=/\v'/ contains=zebraEscapes

" Boolean literals
syntax keyword zebraBoolean true false

" Escape literals \n, \r, ....
syntax match zebraEscapes display contained "\\[nr\"']"

" Number literals
syntax match zebraNumber "\d\+"

" Type names the compiler recognizes
syntax keyword zebraTypeNames int bool string

" Speciak characters
syntax match zebraSpecialChar "[\+\-\*\{\}\(\)<>=,]"

" Functions
syntax region zebraFunction start="fn" skip="\w" end="("
 
" Set highlights
highlight default link zebraKeywords Keyword
highlight default link zebraCommentLine Comment
highlight default link zebraString String
highlight default link zebraNumber Number
highlight default link zebraBoolean Boolean
highlight default link zebraTypeNames Type
highlight default link zebraChar Character
highlight default link zebraEscapes SpecialChar
highlight default link zebraSpecialChar Special
highlight default link zebraFunction Function

let b:current_syntax = "zebra"

