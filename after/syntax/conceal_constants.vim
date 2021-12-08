scriptencoding utf-8
if !has('conceal')
    finish
endif

" http://www.fileformat.info/info/unicode/block/geometric_shapes/images.htm
syntax keyword Keyword break conceal cchar=◁
syntax keyword Keyword continue conceal cchar=↻
syntax keyword Keyword return conceal cchar=◀
" Haskell monad operators
" syntax match hsNiceOperator "\<return\>" conceal cchar=η
" syntax match hsNiceOperator "\<join\>"   conceal cchar=µ
" syntax keyword Keyword return conceal cchar=⏎
syntax match Keyword '\v\\n' conceal cchar=⏎
syntax match Conditional /\v<if>/ conceal cchar=▸
syntax match Conditional '\v<else>' conceal cchar=▪
syntax match Conditional '\v<else if>' conceal cchar=▹
syntax match Conditional '\v<elif>' conceal cchar=▹
syntax keyword Conditional match conceal cchar=▸
syntax keyword Conditional goto conceal cchar=↷
" syntax keyword Keyword assert conceal cchar=‽
syntax match Keyword '\v<yield>' conceal cchar=⇇
syntax match Keyword '\v<yield from>' conceal cchar=⇄
syntax match Repeat '\v<for>' conceal cchar=∀
syntax keyword Repeat while conceal cchar=⥁
syntax keyword Repeat loop conceal cchar=∞
" syntax keyword Operator sizeof conceal cchar=𝔠
syntax keyword Operator sizeof conceal cchar=#

" TODO(cosmetic): find better self character
syntax match Normal '\v<self>' conceal cchar=⚕
syntax match Normal '\v<Self>' conceal cchar=𝐒
syntax match Normal '\v<self>\.' conceal cchar=“
syntax keyword Normal self conceal cchar=⚕
syntax keyword Normal Self conceal cchar=𝐒
" syntax keyword Normal def conceal cchar=λ
syntax keyword Normal class conceal cchar=※
syntax keyword Normal enum conceal cchar=∩
syntax keyword Normal union conceal cchar=⋃
syntax keyword Normal struct conceal cchar=𝐒

" syntax match Normal '\v<((math|torch|np|tf|scipy|sp)\.)?ceil>' conceal cchar=⌈
" syntax match Normal '\v<((math|torch|np|tf|scipy|sp)\.)?floor>' conceal cchar=⌊
" syntax match Normal '\v<((torch|np|tf|scipy|sp)\.)?(eye|identity)>' conceal cchar=𝕀
" syntax match Normal '\v<((math|np|scipy|sp)\.)e>'conceal cchar=ℯ
" syntax match Normal '\v<((math|ninp|scipy|sp)\.)?inf>' conceal cchar=∞
" syntax match pyNiceOperator "\<\%(\%(math\|np\|numpy\)\.\)\?sqrt\>" conceal cchar=√
" syntax match pyNiceKeyword "\<\%(\%(math\|np\|numpy\)\.\)\?pi\>" conceal cchar=π
" syntax match pyNiceOperator "\<\%(\%(math\|np\|numpy\)\.\)\?ceil\>" conceal cchar=⌈
" syntax match pyNiceOperator "\<\%(\%(math\|np\|numpy\)\.\)\?floor\>" conceal cchar=⌊

syntax match Normal "\v<float('inf')>" conceal cchar=∞
syntax match Normal '\v<float("inf")>' conceal cchar=∞

syntax match Normal '\v<((math|torch|np|tf|scipy|sp)\.)?pi>' conceal cchar=π
syntax match Normal 'PI' conceal cchar=π
" syntax match Normal '\v<((torch|np|scipy|sp)\.mean)|(tf\.reduce_mean)>' conceal cchar=𝔼


" syntax keyword Boolean True conceal cchar=𝐓
" syntax keyword Boolean False conceal cchar=𝐅
" syntax keyword Boolean false conceal cchar=𝐅
" syntax keyword Boolean FALSE conceal cchar=𝐅
" syntax keyword Boolean true conceal cchar=𝐓
" syntax keyword Boolean TRUE conceal cchar=𝐓
syntax match Boolean '\<\ctrue\>'  conceal cchar=𝑇
syntax match Boolean '\<\cfalse\>' conceal cchar=𝐹
syntax keyword Constant undefined conceal cchar=⊥
syntax keyword Constant NULL null Null conceal cchar=∅
syntax keyword Constant None conceal cchar=∅
syntax keyword Constant Some conceal cchar=✔
" syntax match Normal '\v((np|scipy|sp|torch)\.)?arange' conceal cchar=⍳

syntax keyword Builtin any conceal cchar=∃

" like APL
" Need to use `syntax match` instead of `syntax keyword` or else keyword takes
" priority and `range(len...` isn't matched.
syntax match Normal '\v<range>' conceal cchar=⍳
syntax match Normal '\v<\zsrange\(len\ze\(' conceal cchar=⍳
syntax keyword Normal enumerate conceal cchar=↑

syntax match Operator '\<or\>' conceal cchar=∨
" Space is required to distinguish this from empty closure
syntax match Normal '[^=,] \zs||\ze ' conceal cchar=∨
" syntax match Operator '||' conceal cchar=∨
syntax match Operator '\<and\>' conceal cchar=∧
syntax match Operator '&&' conceal cchar=∧
" syntax match Operator '||\ze[[:alpha:][:space:]_([]' conceal cchar=∨
" syntax match Operator '&&\ze[[:alpha:][:space:]_([]' conceal cchar=∧
" syntax match Normal '\v(^|\s|\W)\zs\&\&\ze(\W|$)' conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match Operator '\%(is \)\@<!\<not\%( \|\>\)' conceal cchar=¬

