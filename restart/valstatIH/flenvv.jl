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

)
