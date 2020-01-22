esem=(

(
body=raw"""
Az $\overline{A+B}$ és $\overline{A} \cdot \overline{B}$ események megegyeznek.
""",
answer=true,
fb=raw"{de-Morgan azonosság}"
)
,
(
body=raw"""
Az $\overline{A+B}$ és $\overline{A} \cdot \overline{B}$ események kizárják egymást.
""",
answer=false,
fb=raw"{de-Morgan azonosság}"
)
,
(
body=raw"""
Az $\overline{A\cdot B}$ maga után vonja az $\overline{A} + \overline{B}$ eseményt.
""",
answer=true,
fb=raw"{de-Morgan azonosság}"
)
,
(
body=raw"""
Az $\overline{A} + \overline{B}$ maga után vonja az $\overline{A\cdot B}$ eseményt.
""",
answer=true,
fb=raw"{de-Morgan azonosság}"
)
,


(
body=raw"""
Ha $\P(A)=1$ akkor $A$ bekövetkezhet.
""",
answer=true,
fb=raw"{Nókoment.}"
)
,
(
body=raw"""
Ha $\P(A)=1$ akkor $A$ mindig bekövetkezik.
""",
answer=false,
fb=raw"{Például: legyen a kísérlet random húzás a $[0,1]$-ből és $A=\{x\in [0,1]:x\neq \frac{1}{2}\}$}"
)
,
(
body=raw"""
Az $A$ és $B$ események pontosan akkor függetlenek, ha $\P(AB)=\P(A)\P(B)$.
""",
answer=true,
fb=raw"{Definíció.}"
)
,
(
body=raw"""
Az $A$ és $B$ események pont akkor függetlenek, ha $\P(A+B)=\P(A)+\P(B)$.
""",
answer=false,
fb=raw"{Definíció.}"
)
,
(
body=raw"""
Ha $\P(A)=0$ akkor $A$ bekövetkezhet.
""",
answer=true,
fb=raw"{Például: legyen a kísérlet random húzás a $[0,1]$-ből és $A=\{\frac{1}{2}\}$}"
)
,
(
body=raw"""
Ha $\P(A)=0$ akkor $A$ sosem következik be.
""",
answer=false,
fb=raw"{Például: legyen a kísérlet random húzás a $[0,1]$-ből és $A=\{\frac{1}{2}\}$}"
)

)
