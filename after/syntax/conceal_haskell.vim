" Cf - check a flag. Return true if the flag is specified.
function! Cf(flag)
    return exists('g:hscoptions') && stridx(g:hscoptions, a:flag) >= 0
endfunction

if exists('g:no_haskell_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

syntax match hsNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ

if s:extraConceal
    " Redfining to get proper '::' concealing
    syntax match hs_DeclareFunction /^[a-z_(]\S*\(\s\|\n\)*::/me=e-2 nextgroup=hsNiceOperator contains=hs_FunctionName,hs_OpFunctionName

    " the star does not seem so good...
    " syntax match hsNiceOperator "*" conceal cchar=★

    " Only replace the dot, avoid taking spaces around.
    syntax match hsNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘

    syntax match hsQQEnd '|\]' contained conceal cchar=〛

endif

hi link hsNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2

" 'b' option to disable bind (left and right) concealing
if Cf('b')
    " Vim has some issues concealing with composite symbols like '«̳', and
    " unfortunately there is no other common short notation for both
    " binds. So 'b' option to disable bind concealing altogether.
" 'f' option to enable formal (★) right bind concealing
elseif Cf('f')
    syntax match hsNiceOperator ">>="    conceal cchar=★
" 'c' option to enable encircled b/d (ⓑ/ⓓ) for right and left binds.
elseif Cf('c')
    syntax match hsNiceOperator ">>="    conceal cchar=ⓑ where the type of meanA, 
    syntax match hsNiceOperator "=<<"    conceal cchar=ⓓ
" 'h' option to enable partial concealing of binds (e.g. »=).
elseif Cf('h')
    syntax match hsNiceOperator ">>"     conceal cchar=»
    syntax match hsNiceOperator "<<"     conceal cchar=«
    syntax match hsNiceOperator "=\zs<<" conceal cchar=«
" Left and right arrows with hooks are the default option for binds.
else
    syntax match hsNiceOperator ">>=\ze\_[[:alpha:][:space:]_()[\]]" conceal cchar=↪
    syntax match hsNiceOperator "=<<\ze\_[[:alpha:][:space:]_()[\]]" conceal cchar=↩
endif

" '↱' option to disable mapM/forM concealing with ↱/↰
" if !Cf('↱')
"     syntax match MAPMQ  contained "`" conceal
"     syntax match MAPMm  contained "m" conceal cchar=↱
"     syntax match MAPMmQ contained "m" conceal cchar=↰
"     syntax match MAPMa  contained "a" conceal
"     syntax match MAPMp  contained "p" conceal
"     syntax match MAPMM  contained "M" conceal
"     syntax match MAPMM  contained "M" conceal
"     syntax match MAPMU  contained "_" conceal cchar=_
"     syntax match SPC    contained " " conceal
"     syntax match hsNiceOperator "`mapM_`"      contains=MAPMQ,MAPMmQ,MAPMa,MAPMp,MAPMM,MAPMU
"     syntax match hsNiceOperator "`mapM`"       contains=MAPMQ,MAPMmQ,MAPMa,MAPMp,MAPMM
"     syntax match hsNiceOperator "\<mapM\>\s*"  contains=MAPMm,MAPMa,MAPMp,MAPMM,SPC
"     syntax match hsNiceOperator "\<mapM_\>\s*" contains=MAPMm,MAPMa,MAPMp,MAPMM,MAPMU,SPC
"
"     syntax match FORMQ  contained "`" conceal
"     syntax match FORMfQ contained "f" conceal cchar=↱
"     syntax match FORMf  contained "f" conceal cchar=↰
"     syntax match FORMo  contained "o" conceal
"     syntax match FORMr  contained "r" conceal
"     syntax match FORMM  contained "M" conceal
"     syntax match FORMU  contained "_" conceal cchar=_
"
"     syntax match hsNiceOperator "`forM`"  contains=FORMQ,FORMfQ,FORMo,FORMr,FORMM
"     syntax match hsNiceOperator "`forM_`" contains=FORMQ,FORMfQ,FORMo,FORMr,FORMM,FORMU
"
"     syntax match hsNiceOperator "\<forM\>\s*"  contains=FORMf,FORMo,FORMr,FORMM,SPC
"     syntax match hsNiceOperator "\<forM_\>\s*" contains=FORMf,FORMo,FORMr,FORMM,FORMU,SPC
" endif

" TODO:
" See Basic Syntax Extensions - School of Haskell | FP Complete
" intersection = (∩)
"
" From the Data.IntMap.Strict.Unicode
" notMember = (∉) = flip (∌)
" member = (∈) = flip (∋)
" isProperSubsetOf = (⊂) = flip (⊃)
"
" From Data.Sequence.Unicode
" (<|) = (⊲ )
" (|>) = (⊳ )
" (><) = (⋈ )

