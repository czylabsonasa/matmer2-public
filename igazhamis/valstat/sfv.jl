sfv=(
(raw"""
Azt mondjuk, hogy egy $f:\R\to \R$ sűrűségfüggvény, ha 
$$
f\ge 0 \ \ \text{és}\ \ \int_{-\infty}^{+\infty}f(x)\d x=1
$$
""",true)
,
(raw"""
Egy $f:\R\to [0,1]$ pontosan akkor sűrűségfüggvény, ha monoton nemcsökkenő, 
balról folytonos, $\lim_{x\to+\infty}f(x)=1$ és $\lim_{x\to-\infty}f(x)=0$
""",false)
,
(raw"""
Azt mondjuk, hogy egy $f:\R\to \R$ sűrűségfüggvény 
$$
\int_{-\infty}^{+\infty}f(x)\d x\ge 0
$$
""",false)
,
(raw"""
Diszkrét valségi változók sűrűségfüggvénye lépcsős függvény.
""",false)
,
(raw"""
Diszkrét valségi változóknak nincs sűrűségfüggvénye.
""",true)
,
(raw"""
Ha $\xi$ sűrűségfüggvénye $f$, akkor bármely $a<b$-re:
$$
\P(a<\xi<b)=\int_{a}^{b}f(x)\d x
$$
""",true)
,
(raw"""
Ha $\xi$-nek $f$ a sűrűségfüggvénye, akkor bármely $a<b$-re:
$$
\P(a<\xi<b)=f(b)-f(a)
$$
""",false)
,
(raw"""
Ha van $\xi$-nek $f$ sűrűségfüggvénye, akkor bármely $b$-re:
$$
\P(\xi<b)=f(b)
$$
""",false)
,
(raw"""
Ha $\xi$-nek $f$ a sűrűségfüggvénye és $F$ az eloszlásfüggvénye, akkor bármely $b$-re:
$$
F(b)=\int_{\infty}^{b}f(x)\d x
$$
""",true)
,
(raw"""
Ha $\xi$-nek $f$ a sűrűségfüggvénye és $F$ az eloszlásfüggvénye, akkor bármely $b$-re:
$$
f(b)=\int_{\infty}^{b}F(x)\d x
$$
""",false)
,
(raw"""
Ha $\xi$-nek $F$ illetve $f$ az eloszlásfüggvény illetve sűrűségfüggvénye, akkor bármely $a<b$-re:
$$
F(b)-F(a)=\int_{a}^{b}f(x)\d x
$$
""",true)

)
