" Remove the keywords. We'll re-add them below. Use silent in case the group
" doesn't exist.
"
" let b:did_clear = 0
"
" if !b:did_clear
"     silent! syntax clear rustOperator
"     silent! syntax clear rustRepeat
"     let b:did_cleer = 1
" endif

" TODO(consider): `::*`
syntax match Normal '::' conceal cchar=•
syntax match Normal '\v<Box(::)?(new)?' conceal cchar=□
" syntax keyword Normal box conceal cchar=□

" I want the semicolons to fade into the background.
" syntax match Comment '\v\zs;\ze(\s*//.*)?$' conceal cchar=♢
" syntax match Comment '\v\zs;\ze(\s*//.*)?$'

" TODO(feat): Add `.expect()`
" TODO(cosmetic): looks like macro
syntax match Identifier '\v\.unwrap\(\)' conceal cchar=!

" " Most specific goes last since conceal run top to bottom
" syntax match Normal '\v[^\n ]\zs\.iter\(\)\ze' conceal cchar=⇡
" syntax match Normal '\v\.enumerate\(\)' conceal cchar=↑
" syntax match Normal '\v\.iter\(\)\.enumerate\(\)' conceal cchar=↑

" TODO String::from_string
" TODO .map .filter .fold .collect

" like APL
syntax keyword Normal in conceal cchar=∈
" We don't use `syntax keyword` in order to swallow the space after.
" syntax match Normal '\v<pub>' conceal cchar=“
" TODO(cosmetic): find better pub symbol
syntax keyword Keyword pub conceal cchar=“
syntax match Normal '\v\zs<pub(\(crate\))?\ze ' conceal cchar=“
" TODO consider using the pointer symbol for the borrow op/ref op
" syntax keyword Constant None conceal cchar=∅
" http://www.fileformat.info/info/unicode/block/geometric_shapes/images.htm
" syntax match Comment '^\%(.*impl\)\@!.*\zs\<for\>' conceal cchar=∀
" syntax keyword Keyword Err conceal cchar=✘

" syntax keyword Type Fn FnOnce FnMut conceal cchar=λ


syntax keyword Type Option conceal cchar=?
" TODO(consider): `Ok` and `Err`
syntax keyword Type Result conceal cchar=⁇

" `Vec::new` has to come after.
syntax match Type '\v\zsvec!\ze\[' conceal cchar=V
syntax match Type '\v<Vec>' conceal cchar=𝕍
syntax match Type '\v<Vec::new' conceal cchar=𝕍

" syntax keyword Comment where conceal cchar=∵

" TODO(feat): `&mut`
" TODO(feat): `.into()` and `::from`
" TODO(feat): `::new`
" TODO(feat): `Self`
" TODO(feat): `async`
" TODO(feat): `const`
" TODO(feat): `<_>`
" TODO(feat): `let`
" TODO(consider): `.build()`
" TODO(consider): `'static`
" TODO(consider): move closure
" TODO(consider): `.powi(:digit:)`
" TODO(consider): `.next()`
" TODO(consider): `.get(:digit:)`
" TODO(consider): `.get(i)`
" TODO(consider): fn replacement that isn't lambda


highlight! link rustBuiltin rustOperator
highlight! link rustOperator Operator
highlight! link rustStatement Statement
highlight! link rustKeyword Keyword
highlight! link rustComment Comment
highlight! link rustConstant Constant
highlight! link rustSpecial Special
highlight! link rustIdentifier Identifier
highlight! link rustType Type

