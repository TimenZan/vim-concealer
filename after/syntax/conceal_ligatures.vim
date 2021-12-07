if !has('conceal')
    finish
endif

syntax match Operator '->' conceal cchar=→
" syntax match Operator '<=' conceal cchar=≤
" syntax match Operator '>=' conceal cchar=≥
" Match greater than and lower than w/o messing with Kleisli composition
syntax match Operator '<=\ze[^<]' conceal cchar=≤
syntax match Operator '>=\ze[^>]' conceal cchar=≥

" syntax match cNiceOperator "++" conceal cchar=Δ
" syntax match cNiceOperator "--" conceal cchar=∇

" only conceal `==` if alone, to avoid concealing merge conflict markers
syntax match Normal '!=' conceal cchar=≠
" syntax match Operator '!=' conceal cchar=≢

" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match Normal '=\@<!===\@!' conceal cchar=≡


syntax match Operator '!!' conceal cchar=‼
syntax match Operator '++\ze[^+]' conceal cchar=⧺
syntax match Operator '\<forall\>' conceal cchar=∀
syntax match Operator '-<' conceal cchar=↢
syntax match Operator '>-' conceal cchar=↣
syntax match Operator '>>\ze\_[[:alpha:][:space:]_()[\]]' conceal cchar=»
syntax match Operator '<<\ze\_[[:alpha:][:space:]_()[\]]' conceal cchar=«
syntax match Operator '<<' conceal cchar=≺
syntax match Operator '>>' conceal cchar=≻
syntax match Operator '-<<' conceal cchar=⤛
syntax match Operator '>>-' conceal cchar=⤜

syntax match Operator '<>'        conceal cchar=⊕


" Option to preserve indentation
if (v:false)
    syntax match hsNiceOperator '<-' conceal cchar=←
    syntax match hsNiceOperator '->' conceal cchar=→
    syntax match hsNiceOperator '=>' conceal cchar=⇒
    syntax match hsNiceOperator '\:\:' conceal cchar=∷
    syntax match hsNiceOperator "\.\." conceal cchar=‥
    syntax match hsNiceOperator "\.\." conceal cchar=…
else
    syntax match hsLRArrowHead contained '>' conceal cchar= 
    syntax match hsLRArrowTail contained '-' conceal cchar=→
    syntax match hsLRArrowFull '->' contains=hsLRArrowHead,hsLRArrowTail

    syntax match hsRLArrowHead contained '<' conceal cchar=←
    syntax match hsRLArrowTail contained '-' conceal cchar= 
    syntax match hsRLArrowFull '<-' contains=hsRLArrowHead,hsRLArrowTail

    syntax match hsLRDArrowHead contained '>' conceal cchar= 
    syntax match hsLRDArrowTail contained '=' conceal cchar=⇒
    syntax match hsLRDArrowFull '=>' contains=hsLRDArrowHead,hsLRDArrowTail
endif

" conceal single characters with replacement
if(v:false)
if Cf('*')
    syntax match hsNiceOperator "*" conceal cchar=⋅
" 'x' option to disable default concealing of asterisk with '×' sign.
elseif !Cf('x')
    syntax match hsNiceOperator "*" conceal cchar=×
endif
endif
