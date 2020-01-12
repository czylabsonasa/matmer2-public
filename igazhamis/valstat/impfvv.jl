# 1 U,exp,N
impfvv=(
(raw"""
Egy $\xi\sim \Unif(a,b)$ várható értéke: $\frac{a+b}{2}$
""",true)
,
(raw"""
Egy $\xi\sim \Unif(a,b)$ várható értéke: $\frac{b-a}{2}$
""",false)
,
(raw"""
Egy $\xi\sim \Unif(a,b)$ szórásnégyzete: $\frac{(b-a)^2}{12}$
""",true)
,
(raw"""
Egy $\xi\sim \Unif(a,b)$ szórásnégyzete: $\frac{(a+b)^2}{2}$
""",false),

(raw"""
Ha $\xi\sim \Unif(0,1)$ akkor $(b-a)\xi+a\sim \Unif(a,b)$.
""",true),

(raw"""
Ha $\xi\sim \Unif(0,1)$ akkor $b\xi+a\sim \Unif(a,b)$.
""",false)
,
(raw"""
Ha $\xi\sim \Norm(\mu,\sigma^2)$ akkor $\frac{\xi-\mu}{\sigma}\sim \Norm(0,1)$.
""",true)
,
(raw"""
Ha $\xi\sim \Norm(0,1)$ akkor $f_{\xi}(x)=\frac{e^{-\frac{x^2}{2}}}{\sqrt{2\pi}}$.
""",true)

)
