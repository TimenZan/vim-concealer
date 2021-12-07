if !has('conceal')
    finish
endif

" XXX These have to be after all the float{16,32} stuff to avoid accidental
" capture. Use @! to ensure that type casts are not concealed, since that's
" hard to read._
"
" [^\s)] is to avoid the edge case of (x: int) where the right paren would
" override the int conceal.
" TODO(cosmetic): distinguish `str` and `String`, at least for Rust
syntax match Type '\v<int(\(|[^\s)\],:])@!' conceal cchar=ℤ
syntax match Type '\v<float(\(|[^\s)\],:])@!' conceal cchar=ℝ
syntax match Type '\v<complex(\(|[^\s)\],:])@!' conceal cchar=ℂ
syntax match Type '\v<str(\(|[^\s)\],:])@!' conceal cchar=𝐒
syntax match Type '\v<bool(\(|[^\s)\],:])@!' conceal cchar=𝔹

" TODO(feat): avoid or change if `void*` or `void *`
" TODO(cosmetic): distinguish void and null
syntax keyword Type void         conceal cchar=∅
syntax keyword Type boolean         conceal cchar=𝔹
syntax keyword Type bool conceal cchar=𝔹
syntax keyword Type unsigned size_t    conceal cchar=ℕ
syntax match Type '\vint|Integer|short|long|Long' conceal cchar=ℤ
syntax match Type '\vint\d\d\_t' conceal cchar=ℤ
syntax match Type '\vuint\d\d\_t' conceal cchar=ℕ
syntax keyword Type char         conceal cchar=∁
syntax keyword Type float Float conceal cchar=ℝ
syntax keyword Type double Double conceal cchar=𝔻
syntax match Type '\vstr|string|String|conceal' cchar=𝐒
syntax match Normal '\v<String(::)?(new|from)?' conceal cchar=𝐒
syntax keyword Type f32 conceal cchar=ℝ
syntax keyword Type f64 conceal cchar=𝔻
syntax keyword Type i32 conceal cchar=ℤ
syntax keyword Type i64 conceal cchar=ℤ
syntax keyword Type isize conceal cchar=ℤ
syntax keyword Type u32 conceal cchar=ℕ
syntax keyword Type u64 conceal cchar=ℕ
syntax keyword Type usize conceal cchar=ℕ
syntax match Type '\<Natural\>'  conceal cchar=ℕ
syntax match Type '\<Nat\>'  conceal cchar=ℕ
syntax match Type '\<Rational\>' conceal cchar=ℚ
syntax keyword Keyword complex conceal cchar=ℂ

syntax keyword Type Vector conceal cchar=𝕍
" syntax match Type '(np|scipy|sp)\.ndarray' conceal cchar=V
syntax match Type '\vtf\.Tensor' conceal cchar=𝕋
syntax match Type '\vtorch\.[tT]ensor' conceal cchar=𝕋
syntax keyword Type tensor Tensor conceal cchar=𝕋
" syntax match Type '\v(torch|np|tf|scipy|sp)\.float(32|64)?' conceal cchar=ℝ
" syntax match Type '\v(torch|np|tf|scipy|sp)\.int(32|64)?' conceal cchar=ℤ

