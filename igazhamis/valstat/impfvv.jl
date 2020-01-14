# 1 U,exp,N
impfvv=(
(
body=raw"""
Egy $\xi\sim \Unif(a,b)$ várható értéke: $\frac{a+b}{2}$
""",
answer=true,
fb=raw"{wiki}"
)
,
(
body=raw"""
Egy $\xi\sim \Unif(a,b)$ várható értéke: $\frac{b-a}{2}$
""",
answer=false,
fb=raw"{wiki}"
)
,
(
body=raw"""
Egy $\xi\sim \Unif(a,b)$ szórásnégyzete: $\frac{(b-a)^2}{12}$
""",
answer=true,
fb=raw"{wiki}"
)
,
(
body=raw"""
Egy $\xi\sim \Unif(a,b)$ szórásnégyzete: $\frac{(a+b)^2}{2}$
""",
answer=false,
fb=raw"{wiki}"
)
,

(
body=raw"""
Ha $\xi\sim \Unif(0,1)$ akkor minden $a<b$-re $(b-a)\xi+a\sim \Unif(a,b)$.
""",
answer=true,
fb=raw"{Egyenletes lineáris transzformáltja is egyenletes (a konstans elfajult esettől eltekintve)}"
)
,

(
body=raw"""
Ha $\xi\sim \Unif(0,1)$ akkor  minden $a<b$-re $b\xi+a\sim \Unif(a,b)$.
""",
answer=false,
fb=raw"{$b\xi+a \sim \Unif(a,a+b)$}"
)
,
(
body=raw"""
Ha $\xi\sim \Norm(\mu,\sigma^2)$ akkor $\frac{\xi-\mu}{\sigma}\sim \Norm(0,1)$.
""",
answer=true,
fb=raw"{Egy normális lineáris transzformáltja is normális marad. (nem minden elszlásra igaz)}"
)
,
(
body=raw"""
Ha $\xi\sim \Norm(0,1)$ akkor a sűrűségfüggvénye $f(x)=\frac{e^{-\frac{x^2}{2}}}{\sqrt{2\pi}}$.
""",
answer=true,
fb=raw"{Def.}"
)

,
(
body=raw"""
Ha $\xi\sim \Exp(\lambda)$ akkor a sűrűségfüggvénye 
$$
f(x)=
\begin{cases}
\lambda e^{-\lambda x}& \ \ x>0\\
0 & \text{máskor} 
\end{cases}
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi\sim \Exp(\lambda)$ akkor a sűrűségfüggvénye 
$$
f(x)=
\begin{cases}
1-e^{-\lambda x}& \ \ x>0\\
0 & \text{máskor} 
\end{cases}
$$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi\sim \Unif(a,b)$ akkor a sűrűségfüggvénye 
$$
f(x)=
\begin{cases}
\frac{1}{b-a} & \ \ a<x<b \\
0 & \text{máskor} 
\end{cases}
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi\sim \Unif(a,b)$ akkor a sűrűségfüggvénye 
$$
f(x)=
\begin{cases}
\frac{x-a}{b-a} & \ \ a<x<b \\
0 & \text{máskor} 
\end{cases}
$$
""",
answer=false,
fb=raw"{Def.}"
)

)
