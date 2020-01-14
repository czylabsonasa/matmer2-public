felt=(
(raw"""
$A$-nak a $B$-re vonatkozó feltételes valsége $\P(A|B)=\frac{\P(A)}{\P(B)}$.
""",false)
,
(raw"""
$A$-nak a $B$-re vonatkozó feltételes valsége $\P(A|B)=\frac{\P(A)}{\P(B)}$, ha $A$ maga után vonja $B$-t.
""",true)
,

(raw"""
$A$-nak a $B$-re vonatkozó feltételes valségét $\P(A|B)=\frac{\P(A\cdot B)}{\P(B)}$ módon értelmezzük, feltéve hogy $\P(B)>0$.
""",true)
,
(raw"""
$A_1,\ldots,A_n$ teljes eseményrendszer, ha $\sum A_k=\Omega$ és a tagok páronként kizáróak.
""",true)
,
(raw"""
$A_1,\ldots,A_n$ teljes eseményrendszer, ha $\sum A_k=\Omega$ és a tagok páronként függetlenek.
""",false)
,

(raw"""
Ha $A_1,\ldots,A_n$ teljes eseményrendszer és $\P(A_k)>0,\ k=1\ldots n$, akkor minden $B$-re:
$$
\P(B)=\sum_{k=1}^n \P(B|A_k)\P(A_k)
$$
""",true)
,

(raw"""
Ha $A_1,\ldots,A_n$ teljes eseményrendszer és $\P(B)>0$ akkor:
$$
\P(B)=\sum_{k=1}^n \P(A_k|B)\P(B)
$$
""",true)
,

(raw"""
Ha $A_1,\ldots,A_n$ teljes eseményrendszer pozitív valségű tagokkal és $\P(B)>0$ akkor minden $m$-re:
$$
\P(A_m|B)=\frac{\P(B|A_m)\P(A_m)}{\sum_{k=1}^n \P(B|A_k)\P(A_k)}
$$
""",true)
,

(raw"""
A teljes függetlenségből következik a páronkénti.
""",true)
,

(raw"""
A páronkénti függetlenségből következik a teljes.
""",false)

)

