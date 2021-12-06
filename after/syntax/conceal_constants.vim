if !has('conceal')
    finish
endif


" http://www.fileformat.info/info/unicode/block/geometric_shapes/images.htm
syntax keyword Keyword break conceal cchar=◁
syntax keyword Keyword continue conceal cchar=↻
syntax keyword Keyword return conceal cchar=◀
" syntax keyword Keyword return conceal cchar=⏎
syntax keyword Conditional if conceal cchar=▸
syntax keyword Conditional elif conceal cchar=▹
syntax keyword Conditional else conceal cchar=▪
syntax keyword Conditional goto conceal cchar=↷
" syntax keyword Keyword assert conceal cchar=‽
syntax match Keyword 'yield from' conceal cchar=⇄
syntax keyword Keyword yield conceal cchar=⇇
syntax keyword Repeat for conceal cchar=∀
syntax keyword Repeat while conceal cchar=⥁
" syntax keyword Operator sizeof conceal cchar=𝔠

syntax match Normal '\v<self>' conceal cchar=⚕
syntax match Normal '\v<self>\.' conceal cchar=“
syntax keyword Normal def conceal cchar=λ
syntax keyword Normal class conceal cchar=※
syntax keyword cStructure enum conceal cchar=∩
syntax keyword cStructure union conceal cchar=⋃
syntax keyword cStructure struct conceal cchar=𝐒

syntax keyword Type Vector conceal cchar=V
" syntax match Type '(np|scipy|sp)\.ndarray' conceal cchar=V
syntax match Type '\vtf\.Tensor' conceal cchar=𝕋
syntax match Type '\vtorch\.[tT]ensor' conceal cchar=𝕋
syntax keyword Type tensor Tensor conceal cchar=𝕋
" syntax match Type '\v(torch|np|tf|scipy|sp)\.float(32|64)?' conceal cchar=ℝ
" syntax match Type '\v(torch|np|tf|scipy|sp)\.int(32|64)?' conceal cchar=ℤ

" syntax match Normal '\v<((math|torch|np|tf|scipy|sp)\.)?ceil>' conceal cchar=⌈
" syntax match Normal '\v<((math|torch|np|tf|scipy|sp)\.)?floor>' conceal cchar=⌊
" syntax match Normal '\v<((torch|np|tf|scipy|sp)\.)?(eye|identity)>' conceal cchar=𝕀
" syntax match Normal '\v<((math|np|scipy|sp)\.)e>'conceal cchar=ℯ
" syntax match Normal '\v<((math|np|scipy|sp)\.)?inf>' conceal cchar=∞
" syntax match pyNiceOperator "\<\%(\%(math\|np\|numpy\)\.\)\?sqrt\>" conceal cchar=√
" syntax match pyNiceKeyword "\<\%(\%(math\|np\|numpy\)\.\)\?pi\>" conceal cchar=π
" syntax match pyNiceOperator "\<\%(\%(math\|np\|numpy\)\.\)\?ceil\>" conceal cchar=⌈
" syntax match pyNiceOperator "\<\%(\%(math\|np\|numpy\)\.\)\?floor\>" conceal cchar=⌊

syntax match Normal "\v<float('inf')>" conceal cchar=∞
syntax match Normal '\v<float("inf")>' conceal cchar=∞

" syntax match Normal '\v<((math|torch|np|tf|scipy|sp)\.)?pi>' conceal cchar=π
" syntax match Normal '\v<((torch|np|scipy|sp)\.mean)|(tf\.reduce_mean)>' conceal cchar=𝔼

" XXX These have to be after all the float{16,32} stuff to avoid accidental
" capture. Use @! to ensure that type casts are not concealed, since that's
" hard to read._
"
" [^\s)] is to avoid the edge case of (x: int) where the right paren would
" override the int conceal.
syntax match Type '\v<int(\(|[^\s)\],:])@!' conceal cchar=ℤ
syntax match Type '\v<float(\(|[^\s)\],:])@!' conceal cchar=ℝ
syntax match Type '\v<complex(\(|[^\s)\],:])@!' conceal cchar=ℂ
syntax match Type '\v<str(\(|[^\s)\],:])@!' conceal cchar=𝐒
syntax match Type '\v<bool(\(|[^\s)\],:])@!' conceal cchar=𝔹

syntax keyword Type void         conceal cchar=∅
syntax keyword Type unsigned     conceal cchar=ℕ
syntax keyword Type int short    conceal cchar=ℤ
syntax keyword Type char         conceal cchar=∁
syntax keyword Type float double conceal cchar=ℝ
syntax keyword Type str string conceal cchar=𝐒
" TODO(feat): add Rust etc types

" TODO(decide): Decide on bool representation
" TODO(refactor): Make case insensitive
syntax keyword Boolean True conceal cchar=⊤
syntax keyword Boolean False conceal cchar=⊥
syntax keyword Boolean false conceal cchar=𝐅
syntax keyword Boolean FALSE conceal cchar=𝐅
syntax keyword Boolean true conceal cchar=𝐓
syntax keyword Boolean TRUE conceal cchar=𝐓
syntax keyword Constant NULL conceal cchar=∅
syntax keyword Constant None conceal cchar=∅
syntax keyword Keyword complex conceal cchar=ℂ
" syntax keyword Keyword bool conceal cchar=𝔹

" syntax match Normal '\v((np|scipy|sp|torch)\.)?arange' conceal cchar=⍳

syntax keyword Builtin any conceal cchar=∃

" like APL
" Need to use `syntax match` instead of `syntax keyword` or else keyword takes
" priority and `range(len...` isn't matched.
syntax match Normal '\v<range>' conceal cchar=⍳
syntax match Normal '\v<\zsrange\(len\ze\(' conceal cchar=⍳
syntax keyword Normal enumerate conceal cchar=↑

syntax match Operator '\<or\>' conceal cchar=∨
syntax match Operator '||' conceal cchar=∨
syntax match Operator '\<and\>' conceal cchar=∧
syntax match Operator '&&' conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match Operator '\%(is \)\@<!\<not\%( \|\>\)' conceal cchar=¬

