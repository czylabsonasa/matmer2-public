# 1 elemu tuple vesszore vegzodik 
eofv=(
(raw"""
Egy $F:\R\to [0,1]$ pontosan akkor eloszlásfüggvény, ha monoton nemcsökkenő, 
balról folytonos, $\lim_{x\to+\infty}F(x)=1$ és $\lim_{x\to-\infty}F(x)=0$
""",true)
,
(raw"""
Azt mondjuk, hogy egy $F:\R\to \R$ eloszlásfüggvény, ha $F\ge 0$ és 
$$
\int_{-\infty}^{+\infty}F(x)\d x=1
$$
""",false)
,
(raw"""
Egy $F:\R\to [0,1]$ pontosan akkor eloszlásfüggvény, ha monoton nemcsökkenő, 
$\lim_{x\to+\infty}F(x)=1$ és $\lim_{x\to-\infty}F(x)=0$
""",false)
,
(raw"""
Minden valségi változónak van eloszlásfüggvénye.
""",true)
,
(raw"""
A diszkrét valségi változóknak nincsen eloszlásfüggvénye.
""",false)
,
(raw"""
Diszkrét valségi változók eloszlásfüggvénye lépcsős függvény.
""",true)
,
(raw"""
Bármely $\xi$-re és $a<b$-re $\P(a\le \xi <b)=F_{\xi}(b)-F_{\xi}(a)$.
""",true)
,
(raw"""
Bármely $\xi$-re és $a<b$-re $\P(a< \xi <b)=F_{\xi}(b)-F_{\xi}(a)$.
""",false)
,
(raw"""
Bármely $\xi$-re és $a$-ra $F_{\xi}(a)+\P(\xi\ge a)=1$.
""",true)
,
(raw"""
Bármely $\xi$-re és $a$-ra $\P(\xi= a)=0$.
""",false)
,
(raw"""
Bármely $\xi$-re és $a$-ra $\P(\xi= a)=0$, feltéve hogy $\xi$ eloszlásfüggvénye
folytonos.
""",true)

)
