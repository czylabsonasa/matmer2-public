felt=(
(
body=raw"""
$A$-nak a $B$-re ($\P(B)>0$) vonatkozó feltételes valsége $\P(A|B)=\frac{\P(A)}{\P(B)}$, ha $A$ maga után vonja $B$-t.
""",
answer=true,
fb=raw"{Def.+$P(AB)=P(A)$ a feltételekből.}"
)
,

(
body=raw"""
$A$-nak a $B$-re vonatkozó feltételes valségét $\P(A|B)=\frac{\P(A\cdot B)}{\P(B)}$ módon értelmezzük, feltéve hogy $\P(B)>0$.
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
$A_1,\ldots,A_n$ teljes eseményrendszer, ha $\sum A_k=\Omega$ és a tagok páronként kizáróak.
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
$A_1,\ldots,A_n$ teljes eseményrendszer, ha $\sum A_k=\Omega$ és a tagok páronként függetlenek.
""",
answer=false,
fb=raw"{Def.}"
)
,

(
body=raw"""
Ha $A_1,\ldots,A_n$ teljes eseményrendszer és $\P(A_k)>0,\ k=1\ldots n$, akkor minden $B$-re:
$$
\P(B)=\sum_{k=1}^n \P(B|A_k)\P(A_k)
$$
""",
answer=true,
fb=raw"{Teljes valség tétele.}"
)
# ,
# (raw"""
# Ha $A_1,\ldots,A_n$ teljes eseményrendszer és $\P(B)>0$ akkor:
# $$
# \P(B)=\sum_{k=1}^n \P(A_k|B)\P(B)
# $$
# """,true)
,

(
body=raw"""
Ha $A_1,\ldots,A_n$ teljes eseményrendszer pozitív valségű tagokkal és $\P(B)>0$ akkor minden $m$-re:
$$
\P(A_m|B)=\frac{\P(B|A_m)\P(A_m)}{\sum_{k=1}^n \P(B|A_k)\P(A_k)}
$$
""",
answer=true,
fb=raw"{Bayes-tétel}"
)
,

(
body=raw"""
A teljes függetlenségből következik a páronkénti.
""",
answer=true,
fb=raw"{Def.}"
)
,

(
body=raw"""
A páronkénti függetlenségből következik a teljes.
""",
answer=false,
fb=raw"{A páronkénti gyengébb tulajdonság.}"
)

)

