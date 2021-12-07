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
