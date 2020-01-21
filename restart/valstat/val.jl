val=(
(
body=raw"""
A valószínűség additív, azaz $\P(A+B)=\P(A)+\P(B)$.
""",
answer=false,
fb=raw"{Csak ha kizáróak (diszjunktak).}"
)
,
(
body=raw"""
A valószínűség additív, azaz $\P(A+B)=\P(A)+\P(B)$, ha $A$ és $B$ kizáróak.
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
A valószínűség monoton, azaz $\P(A)<\P(B)$, ha $A\subseteq B$.
""",
answer=false,
fb=raw"{$A=B$?}"
)
,
(
body=raw"""
A valószínűség monoton, azaz $\P(A)\le \P(B)$, ha $A\subseteq B$.
""",
answer=true,
fb=raw"{$B=A\cup (B\setminus A)$+additívitás}"
)
,

(
body=raw"""
Bármely esemény valsége kiszámolható a $\frac{\text{kedvező}}{\text{összes}}$ képlettel.
""",
answer=false,
fb=raw"{Csak ha az elemi események egyforma valségűek.}"
)
,
(
body=raw"""
Bármely esemény valsége kiszámolható a $\frac{\text{kedvező}}{\text{összes}}$ képlettel, ha az elemi események 
egyforma valségűek.
""",
answer=true,
fb=raw"{Additívitás.}"
)

,
(
body=raw"""
Ha véges sok elemi esemény van, akkor bármely $C$-re $\P(C)=\sum_{\omega_k\in C} \P( \{\omega_k \})$.
""",
answer=true,
fb=raw"{Additívitás.}"
)
)
