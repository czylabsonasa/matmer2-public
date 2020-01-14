val=(
(raw"""
A valószínűség additív, azaz $\P(A+B)=\P(A)+\P(B)$.
""",false)
,
(raw"""
A valószínűség additív, azaz $\P(A+B)=\P(A)+\P(B)$, ha $A$ és $B$ kizáróak.
""",true)
,
(raw"""
A valószínűség monoton, azaz $\P(A)<\P(B)$, ha $A\subseteq B$.
""",false)
,
(raw"""
A valószínűség monoton, azaz $\P(A)\le \P(B)$, ha $A\subseteq B$.
""",true)
,

(raw"""
Bármely esemény valsége kiszámolható a $\frac{\text{kedvező}}{\text{összes}}$ képlettel.
""",false)
,
(raw"""
Bármely esemény valsége kiszámolható a $\frac{\text{kedvező}}{\text{összes}}$ képlettel, ha az elemi események 
egyforma valségűek.
""",true)

,
(raw"""
Ha véges sok elemi esemény van, akkor bármely $C$-re $\P(C)=\sum_{\omega_k\in C} \P( \{\omega_k \})$.
""",true)



)
