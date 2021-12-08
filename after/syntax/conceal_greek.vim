scriptencoding utf-8
if !has('conceal')
    finish
endif

syntax keyword Normal alpha ALPHA conceal cchar=α
syntax keyword Normal beta BETA conceal cchar=β
syntax keyword Normal Gamma conceal cchar=Γ
syntax keyword Normal gamma GAMMA conceal cchar=γ
syntax keyword Normal Delta conceal cchar=Δ
syntax keyword Normal delta DELTA conceal cchar=δ
syntax keyword Normal epsilon EPSILON conceal cchar=ε
syntax keyword Normal zeta ZETA conceal cchar=ζ
syntax keyword Normal eta ETA conceal cchar=η
syntax keyword Normal Theta conceal cchar=ϴ
syntax keyword Normal theta THETA conceal cchar=θ
syntax keyword Normal kappa KAPPA conceal cchar=κ
syntax keyword Normal lambda LAMBDA lambda_ _lambda conceal cchar=λ
syntax keyword Normal mu MU conceal cchar=μ
syntax keyword Normal nu NU conceal cchar=ν
syntax keyword Normal Xi conceal cchar=Ξ
syntax keyword Normal xi XI conceal cchar=ξ
syntax keyword Normal pi PI Pi conceal cchar=Π
syntax keyword Normal rho RHO conceal cchar=ρ
syntax keyword Normal sigma SIGMA conceal cchar=σ
syntax keyword Normal tau TAU conceal cchar=τ
syntax keyword Normal upsilon UPSILON conceal cchar=υ
syntax keyword Normal Phi conceal cchar=Φ
syntax keyword Normal phi PHI conceal cchar=φ
syntax keyword Normal chi CHI conceal cchar=χ
syntax keyword Normal Psi conceal cchar=Ψ
syntax keyword Normal psi PSI conceal cchar=ψ
syntax keyword Normal Omega conceal cchar=Ω
syntax keyword Normal omega OMEGA conceal cchar=ω
syntax keyword Normal nabla NABLA conceal cchar=∇


syntax match hsNiceOperator '\<planckConstant\>' conceal cchar=ℎ
syntax match hsNiceOperator '\<reducedPlanckConstant\|planckConstantOver2Pi\|hbar\|hslash\>' conceal cchar=ℏ
