# 
flenvv=(
(raw"""
Azt mondjuk, hogy $\xi$ és $\eta$ diszkrét valségi változók függetlenek, ha
$$
\P(\xi=x,\eta=y)=\P(\xi=x)\P(\eta=y)
$$
bármely $x,y\in \R$-re teljesül.
""",true)
,
(raw"""
Azt mondjuk, hogy $\xi$ és $\eta$ valségi változók függetlenek, ha
$$
\E(\xi \eta)=\E(\xi)\E(\eta)
$$
""",false)
,
(raw"""
Ha $\xi$ és $\eta$ valségi változók függetlenek, akkor
$$
\E(\xi \eta)=\E(\xi)\E(\eta)
$$
feltéve, hogy létezik a szórásuk.
""",true)
,

(raw"""
Ha $\xi$ és $\eta$ diszkrét valségi változóknak létezik a szórása és nemnulla, akkor a 
korrelációjuk
$$
\corr(\xi,\eta)=\frac{\cov(\xi,\eta)}{\D(\xi)\D(\eta)}
$$
""",true)
,
(raw"""
Ha $\xi$ és $\eta$ diszkrét valségi változóknak létezik a szórása és nemnulla, akkor a 
korrelációjuk
$$
\corr(\xi,\eta)=\E(\xi\eta)-\E(\xi)\E(\eta)
$$
""",false)
,
(raw"""
Ha $\xi$ és $\eta$ valségi változóknak létezik a szórása, akkor a 
kovarianciájuk
$$
\cov(\xi,\eta)=\E(\xi\eta)-\E(\xi)\E(\eta)
$$
""",true)
,
(raw"""
Ha $\xi$ és $\eta$ valségi változóknak létezik a szórása, akkor a 
kovarianciájuk
$$
\cov(\xi,\eta)=\E((\xi-\E(\xi))(\eta-\E(\eta)))
$$
""",true)
,


(raw"""
Ha a $\xi$ és $\eta$ valségi változóknak létezik a kovarianciája, akkor $-1\le \cov(\xi,\eta)\le 1$.
""",false)
,

(raw"""
Ha a $\xi$ és $\eta$ valségi változóknak létezik a korrelációja, akkor $-1\le \corr(\xi,\eta)\le 1$.
""",true)
,


)
