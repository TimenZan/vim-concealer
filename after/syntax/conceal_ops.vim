if !has('conceal')
    finish
endif

syntax match Normal '<<' conceal cchar=≺
syntax match Normal '>>' conceal cchar=≻
