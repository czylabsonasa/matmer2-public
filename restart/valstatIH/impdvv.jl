# 1 U,exp,N
impdvv=(
(
body=raw"""
Egy $\xi\sim \Binom(n,p)$ várható értéke: $np$
""",
answer=true,
fb=raw"{$\xi=\xi_1+\ldots+\xi_n$, ahol $\xi_k$ Bernoulli és $\E(\xi)=p$+additívitás}"
)
,
(
body=raw"""
Egy $\xi\sim \Binom(n,p)$ várható értéke: $n+p$
""",
answer=false,
fb=raw"{$\xi=\xi_1+\ldots+\xi_n$, ahol $\xi_k$ Bernoulli és $\E(\xi_k)=p$+$\E$-additívitása}"
)
,
(
body=raw"""
Egy $\xi\sim \Binom(n,p)$ szórásnégyzete: $np(1-p)$
""",
answer=true,
fb=raw"{$\xi=\xi_1+\ldots+\xi_n$, ahol $\xi_k$ Bernoulli és $\E(\xi_k)=p$+$\E$-additívitása}"
)
,
(
body=raw"""
Egy $\xi\sim \Binom(n,p)$ szórásnégyzete: $\frac{n+1}{2}$
""",
answer=false,
fb=raw"{$\xi=\xi_1+\ldots+\xi_n$, ahol $\xi_k$ Bernoulli és $\D^2(\xi_k)=p(1-p)$+$\D^2$-additívitása(függetlenség esetén)}"
)
,
(
body=raw"""
Azt mondjuk, hogy $\xi\sim \Binom(n,p)$, ha 
$$
\P(\xi=k)=\binom{n}{k}p^k(1-p)^{n-k}\ \ \ k=0\ldots n
$$
valamilyen $n>0$ és $p\in[0,1]$ esetén.
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Azt mondjuk, hogy $\xi\sim \Binom(n,p)$, ha 
$$
\P(\xi=k)=\binom{n}{k}p^k(1-p)\ \ \ (k=0,1\ldots n)
$$
valamilyen $n>0$ és $p\in[0,1]$ esetén.
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Azt mondjuk, hogy $\xi\sim \Poi(\lambda)$, ha 
$$
\P(\xi=k)=e^{-\lambda}\frac{\lambda^k}{k!}\ \ \ (k=0,1,2\ldots )
$$ 
valamilyen $\lambda>0$ esetén.
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Azt mondjuk, hogy $\xi\sim \Poi(\lambda)$, ha 
$$
\P(\xi=k)=e^{\lambda}\frac{\lambda^k}{k}\ \ \ (k=0,1,2\ldots )
$$ 
valamilyen $\lambda>0$ esetén.
""",
answer=false,
fb=raw"{Def.}"
)
,


)
