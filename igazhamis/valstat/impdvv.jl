# 1 U,exp,N
impdvv=(
(raw"""
Egy $\xi\sim \Binom(n,p)$ várható értéke: $np$
""",true)
,
(raw"""
Egy $\xi\sim \Binom(n,p)$ várható értéke: $n+p$
""",false)
,
(raw"""
Egy $\xi\sim \Binom(n,p)$ szórásnégyzete: $np(1-p)$
""",true)
,
(raw"""
Egy $\xi\sim \Binom(n,p)$ szórásnégyzete: $\frac{n+1}{2}$
""",false)
,
(raw"""
Azt mondjuk, hogy $\xi\sim \Binom(n,p)$, ha $\P(\xi=k)=\binom{n}{k}p^k(1-p)^{n-k}$, valamilyen $n>0$ és $p\in[0,1]$
eetén.
""",true)
,


)
