if !has('conceal')
    finish
endif

syntax match Normal '->' conceal cchar=→
syntax match Normal '<=' conceal cchar=≤
syntax match Normal '>=' conceal cchar=≥

" syntax match cNiceOperator "++" conceal cchar=Δ
" syntax match cNiceOperator "--" conceal cchar=∇

" only conceal `==` if alone, to avoid concealing merge conflict markers
syntax match Normal '!=' conceal cchar=≠
" syntax match Operator '!=' conceal cchar=≢

" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match Normal '=\@<!===\@!' conceal cchar=≡
