scriptencoding utf-8
if !has('conceal')
    finish
endif
" XXX least specific cases at the top, since the match rules seem to be
" cumulative.

" Need to be handled specially for `not in` to work. Order doesn't matter.
syntax match Normal '\v<not in>' conceal cchar=∉
syntax match Normal '\v<in>' conceal cchar=∈

" syntax match Normal '\s@\s'ms=s+1,me=e-1 conceal cchar=⊗
" syntax match Normal '\s\*\s'ms=s+1,me=e-1 conceal cchar=∙
" " syntax match Normal '\v(\+|-|*|/|\%)@!\=' conceal cchar=←
" syntax match Normal '\v[^-=+*/]\zs\=\ze[^=]' conceal cchar=←
" syntax match Normal '\v\=@<!\=\=\=@!' conceal cchar=≝

" no ending word boundary on parens
syntax match Normal '\v\.t\(\)' conceal cchar=ᵀ
syntax match Normal '\v\.T>' conceal cchar=ᵀ

syntax match Normal '\v\.inverse\(\)' conceal cchar=⁻

syntax match Normal '\v\.reshape>'ms=s conceal cchar=♚

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax keyword pyNiceBuiltin all conceal cchar=∀
" syntax match pyNiceOperator " \* " conceal cchar=∙
" syntax match pyNiceOperator " / " conceal cchar=÷

" Your background, and taste, may affect whether you like # for cardinality ;)
syntax keyword pyNiceBuiltin len conceal cchar=#

highlight link pyNiceOperator Operator
highlight link pyNiceStatement Statement
highlight link pyNiceKeyword Keyword
highlight link pyNiceBuiltin Builtin

highlight! link pyBuiltin pyOperator
highlight! link pyOperator Operator
highlight! link pyStatement Statement
highlight! link pyKeyword Keyword
highlight! link pyComment Comment
highlight! link pyConstant Constant
highlight! link pySpecial Special
highlight! link pyIdentifier Identifier
highlight! link pyType Type

hi! link Conceal Operator

