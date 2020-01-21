sfv=(
(
body=raw"""
Azt mondjuk, hogy egy $f:\R\to \R$ sűrűségfüggvény, ha 
$$
f\ge 0 \ \ \text{és}\ \ \int_{-\infty}^{+\infty}f(x)\d x=1
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Egy $f:\R\to [0,1]$ pontosan akkor sűrűségfüggvény, ha monoton nemcsökkenő, 
balról folytonos, $\lim_{x\to+\infty}f(x)=1$ és $\lim_{x\to-\infty}f(x)=0$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Azt mondjuk, hogy egy $f:\R\to \R$ sűrűségfüggvény 
$$
\int_{-\infty}^{+\infty}f(x)\d x\ge 0
$$
""",
answer=false,
fb=raw"{$f\ge 0$ fontos (monoton nemcsökkenő $F$-nek a deriváltja)}"
)
,
(
body=raw"""
Diszkrét valségi változók sűrűségfüggvénye lépcsős függvény.
""",
answer=false,
fb=raw"{Diszkrét vv-nak nincs sfv-e}"
)
,
(
body=raw"""
Diszkrét valségi változóknak nincs sűrűségfüggvénye.
""",
answer=true,
fb=raw"{Véges értékkészletű vv-re az $F$ lépcsős fv., aminek a deriváltja azonosan 0, ami nem lahet a sfv.}"
)
,
(
body=raw"""
Ha $\xi$ sűrűségfüggvénye $f$, akkor bármely $a<b$-re:
$$
\P(a<\xi<b)=\int_{a}^{b}f(x)\d x
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi$-nek $f$ a sűrűségfüggvénye, akkor bármely $a<b$-re:
$$
\P(a<\xi<b)=f(b)-f(a)
$$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha van $\xi$-nek $f$ sűrűségfüggvénye, akkor bármely $b$-re:
$$
\P(\xi<b)=f(b)
$$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi$-nek $f$ a sűrűségfüggvénye és $F$ az eloszlásfüggvénye, akkor bármely $b$-re:
$$
F(b)=\int_{\infty}^{b}f(x)\d x
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi$-nek $f$ a sűrűségfüggvénye és $F$ az eloszlásfüggvénye, akkor bármely $b$-re:
$$
f(b)=\int_{\infty}^{b}F(x)\d x
$$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi$-nek $F$ illetve $f$ az eloszlásfüggvény illetve sűrűségfüggvénye, akkor bármely $a<b$-re:
$$
F(b)-F(a)=\int_{a}^{b}f(x)\d x
$$
""",
answer=true,
fb=raw"{Def.}"
)

)
