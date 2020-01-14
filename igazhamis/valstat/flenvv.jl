# 
flenvv=(
(
body=raw"""
Azt mondjuk, hogy $\xi$ és $\eta$ diszkrét valségi változók függetlenek, ha
$$
\P(\xi=x,\eta=y)=\P(\xi=x)\P(\eta=y)
$$
bármely $x,y\in \R$-re teljesül.
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha
$$
\E(\xi \eta)=\E(\xi)\E(\eta)
$$
akkor$\xi$ és $\eta$ valségi változók függetlenek.

""",
answer=false,
fb=raw"{Fordítva igaz. Ezek a korrelálatlan (merőleges) változók. }"
)
,
(
body=raw"""
Ha $\xi$ és $\eta$ valségi változók függetlenek, akkor
$$
\E(\xi \eta)=\E(\xi)\E(\eta)
$$
feltéve, hogy létezik a szórásuk.
""",
answer=true,
fb=raw"{Tétel.}"
)
,

(
body=raw"""
Ha $\xi$ és $\eta$ diszkrét valségi változóknak létezik a szórása és nemnulla, akkor a 
korrelációjuk
$$
\corr(\xi,\eta)=\frac{\cov(\xi,\eta)}{\D(\xi)\D(\eta)}
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi$ és $\eta$ diszkrét valségi változóknak létezik a szórása és nemnulla, akkor a 
korrelációjuk
$$
\corr(\xi,\eta)=\E(\xi\eta)-\E(\xi)\E(\eta)
$$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Ha $\xi$ és $\eta$ valségi változóknak létezik a szórása, akkor a 
kovarianciájuk
$$
\cov(\xi,\eta)=\E(\xi\eta)-\E(\xi)\E(\eta)
$$
""",
answer=true,
fb=raw"{Tulajdonság.}"
)
,

(
body=raw"""
Ha $\xi$ és $\eta$ valségi változóknak létezik a szórása, akkor a 
kovarianciájuk
$$
\cov(\xi,\eta)=\E((\xi-\E(\xi))(\eta-\E(\eta)))
$$
""",
answer=true,
fb=raw"{Def.}"
)
,


(
body=raw"""
Ha a $\xi$ és $\eta$ valségi változóknak létezik a kovarianciája, akkor $-1\le \cov(\xi,\eta)\le 1$.
""",
answer=false,
fb=raw"{Ilyesmi a $\corr$-ra igaz.}"
)
,

(
body=raw"""
Ha a $\xi$ és $\eta$ valségi változóknak létezik a korrelációja, akkor $-1\le \corr(\xi,\eta)\le 1$.
""",
answer=true,
fb=raw"{Tulajdonság,tétel.}"
)

)
