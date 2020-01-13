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
Ha $\xi\sim \Unif(0,1)$ akkor minden $a,b$-re $(b-a)\xi+a\sim \Unif(a,b)$.
""",true),

(raw"""
Ha $\xi\sim \Unif(0,1)$ akkor  minden $a,b$-re $b\xi+a\sim \Unif(a,b)$.
""",false)
,
(raw"""
Ha $\xi\sim \Norm(\mu,\sigma^2)$ akkor $\frac{\xi-\mu}{\sigma}\sim \Norm(0,1)$.
""",true)
,
(raw"""
Ha $\xi\sim \Norm(0,1)$ akkor a sűrűségfüggvénye $f_{\xi}(x)=\frac{e^{-\frac{x^2}{2}}}{\sqrt{2\pi}}$.
""",true)

,
(raw"""
Ha $\xi\sim \Exp(\lambda)$ akkor a sűrűségfüggvénye 
$$
f_{\xi}(x)=
\begin{cases}
\lambda e^{-\lambda x}& \ \ x>0\\
0 & \text{máskor} 
\end{cases}
$$
""",true)
,
(raw"""
Ha $\xi\sim \Exp(\lambda)$ akkor a sűrűségfüggvénye 
$$
f_{\xi}(x)=
\begin{cases}
1-e^{-\lambda x}& \ \ x>0\\
0 & \text{máskor} 
\end{cases}
$$
""",false)
,
(raw"""
Ha $\xi\sim \Unif(a,b)$ akkor a sűrűségfüggvénye 
$$
f_{\xi}(x)=
\begin{cases}
\frac{1}{b-a} & \ \ a<x<b \\
0 & \text{máskor} 
\end{cases}
$$
""",true)
,
(raw"""
Ha $\xi\sim \Unif(a,b)$ akkor a sűrűségfüggvénye 
$$
f_{\xi}(x)=
\begin{cases}
\frac{x-a}{b-a} & \ \ a<x<b \\
0 & \text{máskor} 
\end{cases}
$$
""",false)


)
