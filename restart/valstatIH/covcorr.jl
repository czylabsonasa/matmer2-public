# 
covcorr=(
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
,
(
body=raw"""
Ha $\corr(\xi,\eta)=\pm 1$ akkor $\xi$ és $\eta$ függetlenek.
""",
answer=false,
fb=raw"{Ha függetlenek, akkor nulla a kovariancia (így a korreláció is)}"
)
,
(
body=raw"""
Ha $\corr(\xi,\eta)=\pm 1$ akkor $\xi= a\eta+b$ valmilyen $a,b\in\R$ számokkal.
""",
answer=true,
fb=raw"{Ezért is nevezik lineéris korrelációnak.}"
)
,
(
body=raw"""
Ha $\corr(\xi,\eta)=\pm 1$ akkor $\xi= a\eta+b$ valmilyen $a,b\in\R$ számokkal.
""",
answer=true,
fb=raw"{Ezért nevezik lineáris korrelációnak.}"
)
,
(
body=raw"""
Ha $\cov(\xi,\eta)=\pm 1$ akkor $\xi= a\eta+b$ valmilyen $a,b\in\R$ számokkal.
""",
answer=false,
fb=raw"{...}"
)
,
(
body=raw"""
Ha $\xi= a\eta+b$ valmilyen $a,b\in\R$ számokkal, akkor $\corr(\xi,\eta)=\pm 1$.
""",
answer=true,
fb=raw"{...}"
)
,
(
body=raw"""
Ha $\xi= a\eta+b$ valmilyen $a,b\in\R$ számokkal, akkor $\cov(\xi,\eta)=\pm 1$.
""",
answer=false,
fb=raw"{...}"
)
,
(
body=raw"""
$\cov(\xi,\xi)=\D^2(\xi).$
""",
answer=true,
fb=raw"{Def.}"
)
,

)
