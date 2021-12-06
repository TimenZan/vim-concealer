if !has('conceal')
    finish
endif

" Matches x0 -> x₀ A2 -> A₂ word2 -> word₂
" Use ms=s+1 to avoid concealing the letter before the number
syntax match Normal '\v<[[:alpha:]_]+0>'ms=e conceal cchar=₀
syntax match Normal '\v<[[:alpha:]_]+1>'ms=e conceal cchar=₁
syntax match Normal '\v<[[:alpha:]_]+2>'ms=e conceal cchar=₂
syntax match Normal '\v<[[:alpha:]_]+3>'ms=e conceal cchar=₃
syntax match Normal '\v<[[:alpha:]_]+4>'ms=e conceal cchar=₄
syntax match Normal '\v<[[:alpha:]_]+5>'ms=e conceal cchar=₅
syntax match Normal '\v<[[:alpha:]_]+6>'ms=e conceal cchar=₆
syntax match Normal '\v<[[:alpha:]_]+7>'ms=e conceal cchar=₇
" syntax match Normal '\v<[[:alpha:]_]+8>'ms=e conceal cchar=₈
" the ranges avoid f8, u8,i8
syntax match Normal '\v<[a-eg-hj-tv-z_]+8>'ms=e conceal cchar=₈
syntax match Normal '\v<[[:alpha:]_]+9>'ms=e conceal cchar=₉
"
" Numbers
syntax match Normal '\v[^_]\zs_0\ze>' conceal cchar=₀
syntax match Normal '\v[^_]\zs_1\ze>' conceal cchar=₁
syntax match Normal '\v[^_]\zs_2\ze>' conceal cchar=₂
syntax match Normal '\v[^_]\zs_3\ze>' conceal cchar=₃
syntax match Normal '\v[^_]\zs_4\ze>' conceal cchar=₄
syntax match Normal '\v[^_]\zs_5\ze>' conceal cchar=₅
syntax match Normal '\v[^_]\zs_6\ze>' conceal cchar=₆
syntax match Normal '\v[^_]\zs_7\ze>' conceal cchar=₇
syntax match Normal '\v[^_]\zs_8\ze>' conceal cchar=₈
syntax match Normal '\v[^_]\zs_9\ze>' conceal cchar=₉

" Letters (avoids camel case)
syntax match Normal '\v[^_]\zs_[aA]\ze>' conceal cchar=ₐ
syntax match Normal '\v[^_]\zs_[lL]\ze>' conceal cchar=ₗ
syntax match Normal '\v[^_]\zs_[pP]\ze>' conceal cchar=ₚ
syntax match Normal '\v[^_]\zs_[rR]\ze>' conceal cchar=ᵣ
syntax match Normal '\v[^_]\zs_[sS]\ze>' conceal cchar=ₛ
syntax match Normal '\v[^_]\zs_[uU]\ze>' conceal cchar=ᵤ
syntax match Normal '\v[^_]\zs_[vV]\ze>' conceal cchar=ᵥ
syntax match Normal '\v[^_]\zs_[xX]\ze>' conceal cchar=ₓ	
syntax match Normal '\v[^_]\zs_[hH]\ze>' conceal cchar=ₕ
syntax match Normal '\v[^_]\zs_[iI]\ze>' conceal cchar=ᵢ
syntax match Normal '\v[^_]\zs_[jJ]\ze>' conceal cchar=ⱼ
syntax match Normal '\v[^_]\zs_[kK]\ze>' conceal cchar=ₖ
syntax match Normal '\v[^_]\zs_[nN]\ze>' conceal cchar=ₙ
syntax match Normal '\v[^_]\zs_[mM]\ze>' conceal cchar=ₘ
syntax match Normal '\v[^_]\zs_[tT]\ze>' conceal cchar=ₜ

" if match(syntax, "conceal_greek")
" 	syntax match Normal '_beta' conceal cchar=ᵦ
" 	syntax match Normal '_rho' conceal cchar=ᵨ
" 	syntax match Normal '_phi' conceal cchar=ᵩ
" 	syntax match Normal '_gamma' conceal cchar=ᵧ
" 	syntax match Normal '_chi' conceal cchar=ᵪ
" endif


" powers
" if (g:conceal_powers == 1)
" 	syntax match Normal '\v\zs ?\*\* ?2\ze>([^.]|$)' conceal cchar=²
" 	syntax match Normal '\v\zs ?\*\* ?n\ze>([^.]|$)' conceal cchar=ⁿ
" 	syntax match Normal '\v\zs ?\*\* ?i\ze>([^.]|$)' conceal cchar=ⁱ
" 	syntax match Normal '\v\zs ?\*\* ?j\ze>([^.]|$)' conceal cchar=ʲ
" 	syntax match Normal '\v\zs ?\*\* ?k\ze>([^.]|$)' conceal cchar=ᵏ
" 	syntax match Normal '\v\zs ?\*\* ?t\ze>([^.]|$)' conceal cchar=ᵗ
" 	syntax match Normal '\v\zs ?\*\* ?x\ze>([^.]|$)' conceal cchar=ˣ
" 	syntax match Normal '\v\zs ?\*\* ?y\ze>([^.]|$)' conceal cchar=ʸ
" 	syntax match Normal '\v\zs ?\*\* ?z\ze>([^.]|$)' conceal cchar=ᶻ
" 	syntax match Normal '\v\zs ?\*\* ?a\ze>([^.]|$)' conceal cchar=ᵃ
" 	syntax match Normal '\v\zs ?\*\* ?b\ze>([^.]|$)' conceal cchar=ᵇ
" 	syntax match Normal '\v\zs ?\*\* ?c\ze>([^.]|$)' conceal cchar=ᶜ
" 	syntax match Normal '\v\zs ?\*\* ?d\ze>([^.]|$)' conceal cchar=ᵈ
" 	syntax match Normal '\v\zs ?\*\* ?e\ze>([^.]|$)' conceal cchar=ᵉ
" 	syntax match Normal '\v\zs ?\*\* ?p\ze>([^.]|$)' conceal cchar=ᵖ
" 	syntax match Normal '\v\zs ?\*\* ?l\ze>([^.]|$)' conceal cchar=ˡ
" 	syntax match Normal '\v\zs ?\*\* ?m\ze>([^.]|$)' conceal cchar=ᵐ
" endif
"
