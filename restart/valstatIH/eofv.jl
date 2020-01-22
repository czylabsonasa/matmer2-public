# 1 elemu tuple vesszore vegzodik 
eofv=(

(
body=raw"""
Egy $F:\R\to \R$ pontosan akkor eloszlásfüggvény, ha monoton nemcsökkenő, 
balról folytonos, $\lim_{x\to+\infty}F(x)=1$ és $\lim_{x\to-\infty}F(x)=0$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Azt mondjuk, hogy egy $F:\R\to \R$ eloszlásfüggvény, ha $F\ge 0$ és 
$$
\int_{-\infty}^{+\infty}F(x)\d x=1
$$
""",
answer=false,
fb=raw"{Ebből nem jön ki a pl. a monotonitás vagy a balról folytonosság.}"
)
,
(
body=raw"""
Egy $F:\R\to [0,1]$ pontosan akkor eloszlásfüggvény, ha monoton nemcsökkenő, 
$\lim_{x\to+\infty}F(x)=1$ és $\lim_{x\to-\infty}F(x)=0$
""",
answer=false,
fb=raw"{A balról folytonosság kell.}"
)
,

(
body=raw"""
Minden valségi változónak van eloszlásfüggvénye.
""",
answer=true,
fb=raw"{Hiszen $F(x)=\P(\xi<x)$, és ez mindig értelmes.}"
)
,

(
body=raw"""
A diszkrét valségi változóknak nincsen eloszlásfüggvénye.
""",
answer=false,
fb=raw"{Mindegyiknek van, definíció szerint.}"
)
,
(
body=raw"""
Véges értékkészletű valségi változók eloszlásfüggvénye lépcsős függvény.
""",
answer=true,
fb=raw"{Az $F(x)=\P(\xi<x)$ konstans az $(a,b)$-n ha $a$ és $b$ két szomszédos eleme az értékkészletnek.}"
)
, 
(
body=raw"""
Bármely $\xi$-re és $a<b$-re $\P(a\le \xi <b)=F_{\xi}(b)-F_{\xi}(a)$.
""",
answer=true,
fb=raw"{$\{a\le\xi<b\}=\{\xi<b\}\setminus \{\xi<a\}$}"
)
,
(
body=raw"""
Bármely $\xi$-re és $a<b$-re $\P(a< \xi <b)=F_{\xi}(b)-F_{\xi}(a)$.
""",
answer=false,
fb=raw"{Diszkrét v.v.-ra ez nem feltétlen igaz, ha $a$-t pozitív valséggel felveszi.}"
)

,
(
body=raw"""
Bármely $\xi$-re és $a$-ra $F_{\xi}(a)+\P(\xi\ge a)=1$.
""",
answer=true,
fb=raw"{Komplementer események.}"
)
,
(
body=raw"""
Bármely $\xi$-re és $a$-ra $\P(\xi= a)=0$.
""",
answer=false,
fb=raw"{Diszkrét v.v.-ra ez nem feltétlen igaz, ha $a$-t pozitív valséggel felveszi.}"
)
,
(
body=raw"""
Bármely $\xi$-re és $a$-ra $\P(\xi= a)=0$, feltéve hogy $\xi$ eloszlásfüggvénye
folytonos.
""",
answer=true,
fb=raw"{$\P(\xi=a)\le\P(a\le\xi<a+\frac{1}{n})=F(a+\frac{1}{n})-F(a) \overset{n\to\infty}{\to} 0$}"
)

)
