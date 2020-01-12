esem=(

(raw"""
Az $\overline{A+B}$ és $\overline{A} \cdot \overline{B}$ események megegyeznek.
""",true)
,
(raw"""
Az $\overline{A+B}$ és $\overline{A} \cdot \overline{B}$ események kizárják egymást.
""",false)
,
(raw"""
Az $\overline{A\cdot B}$ maga után vonja az $\overline{A} + \overline{B}$ eseményt.
""",true)
,
(raw"""
Az $\overline{A} + \overline{B}$ maga után vonja az $\overline{A\cdot B}$ eseményt.
""",true)
,


(raw"""
Ha $\P(A)=1$ akkor $A$ bekövetkezhet.
""",true)
,
(raw"""
Ha $\P(A)=1$ akkor $A$ mindig bekövetkezik.
""",false)
,
(raw"""
Az $A$ és $B$ események pontosan akkor függetlenek, ha $\P(AB)=\P(A)\P(B)$.
""",true)
,
(raw"""
Az $A$ és $B$ események pont akkor függetlenek, ha $\P(A+B)=\P(A)+\P(B)$.
""",false)
,
(raw"""
Ha $\P(A)=0$ akkor $A$ bekövetkezhet.
""",true)
,
(raw"""
Ha $\P(A)=0$ akkor $A$ sosem következik be.
""",false)

)
