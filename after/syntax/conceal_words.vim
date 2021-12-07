if !has('conceal')
	finish
endif


syntax match Operator '`div`' conceal cchar=÷
syntax match Operator '`elem`' conceal cchar=∈
syntax match Operator '`notElem`' conceal cchar=∉
syntax match Operator '`isSubsetOf`' conceal cchar=⊆
syntax match Operator '`union`' conceal cchar=∪
syntax match Operator '`intersect`' conceal cchar=∩
syntax match Operator '\\\\\ze[[:alpha:][:space:]_([]' conceal cchar=∖
syntax match Operator '<\*>'      conceal cchar=⊛
syntax match Operator '`mappend`' conceal cchar=⊕
syntax match Operator '\<mappend\>' conceal cchar=⊕
syntax match Operator '\<empty\>' conceal cchar=∅
syntax match Operator '\<mzero\>' conceal cchar=∅
syntax match Operator '\<mempty\>' conceal cchar=∅
syntax match Operator '\<Either\>'  conceal cchar=𝐄
syntax match Operator '\<Right\>'   conceal cchar=𝑅
syntax match Operator '\<Left\>'    conceal cchar=𝐿

    syntax match hsNiceOperator "\<Maybe\>"   conceal cchar=𝐌
    syntax match hsNiceOperator "\<Just\>"    conceal cchar=𝐽
    syntax match hsNiceOperator "\<Nothing\>" conceal cchar=𝑁
" Option to set space consumption
if (v:true)
    syntax match hsNiceOperator "\<sum\>"                        conceal cchar=∑
    syntax match hsNiceOperator "\<product\>"                    conceal cchar=∏
    syntax match hsNiceOperator "\<sqrt\>"                       conceal cchar=√
    syntax match hsNiceOperator "\<not\>"                        conceal cchar=¬
else
    syntax match hsNiceOperator "\<sum\>\(\ze\s*[.$]\|\s*\)"     conceal cchar=∑
    syntax match hsNiceOperator "\<product\>\(\ze\s*[.$]\|\s*\)" conceal cchar=∏
    syntax match hsNiceOperator "\<sqrt\>\(\ze\s*[.$]\|\s*\)"    conceal cchar=√
    syntax match hsNiceOperator "\<not\>\(\ze\s*[.$]\|\s*\)"     conceal cchar=¬
endif
    syntax match hsNiceOperator '\<powerset\>' conceal cchar=℘
    syntax match hsNiceOperator '\<Text\>'    conceal cchar=𝐓
    syntax match hsNiceOperator "`implies`"  conceal cchar=⇒
    syntax match hsNiceOperator "`iff`" conceal cchar=⇔
    syntax match hsNiceOperator "<$>"    conceal cchar=ⓜ
    syntax match hsNiceOperator "`fmap`" conceal cchar=ⓜ
    syntax match hsNiceOperator "`liftM`" conceal cchar=↥
    syntax match hsNiceOperator "`liftA`" conceal cchar=↥
    syntax match hsNiceOperator "`fmap`"  conceal cchar=↥
    syntax match hsNiceOperator "<$>"     conceal cchar=↥
    " Minus is a special syntax construct in Haskell. We use squared minus to tell the syntax from the binary function.
    syntax match hsNiceOperator "(-)"        conceal cchar=⊟
    syntax match hsNiceOperator "`subtract`" conceal cchar=⊟



	" preserve spacing to not ruin indentation
    syntax match WS contained "w" conceal cchar=∵
    syntax match HS contained "h" conceal cchar= 
    syntax match ES contained "e" conceal cchar= 
    syntax match RS contained "r" conceal cchar= 
    syntax match hsNiceOperator "\<where\>" contains=WS,HS,ES,RS,ES

    syntax match hsNiceOperator "\<therefore\>" conceal cchar=∴
    syntax match hsNiceOperator "\<exists\>" conceal cchar=∃
    syntax match hsNiceOperator "\<notExist\>" conceal cchar=∄
    syntax match hsNiceOperator ":=" conceal cchar=≝


    syntax match hsNiceOperator "\<realPart\>" conceal cchar=ℜ
    syntax match hsNiceOperator "\<imagPart\>" conceal cchar=ℑ
