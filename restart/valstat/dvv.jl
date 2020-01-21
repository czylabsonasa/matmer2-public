# véges értékkészlet
dvv=(
(
body=raw"""
Egy $p_1,\ldots, p_n$ vektor pont akkor valségeloszlás, ha $\sum_{k=1}^n p_k=1$.
""",
answer=false,
fb=raw"{Fontos a $p_k\ge 0$ is.}"
)
,
(
body=raw"""
Egy nemnegatív tagú $p_1,\ldots, p_n$ vektor pont akkor valségeloszlás, ha $\sum_{k=1}^n p_k=1$.
""",
answer=true,
fb=raw"{Pedig de.}"
)
,

(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a várható értéke:
$$
\E(\xi)=\sum_{k=1}^n \P(\xi=x_k)x_k
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a várható értéke:
$$
\E(\xi)=\frac{\sum_{k=1}^n x_k}{n}
$$
""",
answer=false,
fb=raw"{Ez csak egyenletesre igaz.}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor:
$$
\min_k(x_k)\le \E(\xi) \le \max_k(x_k)
$$
""",
answer=true,
fb=raw"{Az adott feltételek mellet a várható érték egy súlyozott közép.}"
)

,

(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a szórása:
$$
\D(\xi)=\sum_{k=1}^n \P(\xi=x_k)(x_k-\E(\xi))^2
$$
""",
answer=false,
fb=raw"{Def.}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a szórásnégyzete:
$$
\D^2(\xi)=\sum_{k=1}^n \P(\xi=x_k)(x_k-\E(\xi))^2
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel és $p_k=\P(\xi=x_k)$. 
Ekkor a második momentuma:
$$
\E(\xi^2)=\sum_{k=1}^n x_k^2 p_k
$$
""",
answer=true,
fb=raw"{Def.}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel és $p_k=\P(\xi=x_k)$. 
Ekkor a második momentuma:
$$
\E(\xi^2)=\sum_{k=1}^n x_k p_k^2
$$
""",
answer=false,
fb=raw"{Def.}"
)

,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. 
Ekkor a szórásnégyzete:
$$
\D^2(\xi)=\E(\xi^2)-\E(\xi)^2
$$
""",
answer=true,
fb=raw"{Def./tulajdonság}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó az $x_1,\ldots ,x_n$ értékeket veheti fel. 
Ekkor a szórásnégyzete:
$$
\D^2(\xi)=\E(\xi^2)-\E(\xi)
$$
""",
answer=false,
fb=raw"{Def./tulajdonság}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó szórása mindig pozitív.
""",
answer=false,
fb=raw"{Egy konstans v.v-nak 0 a szórása.}"
)
,
# (
# body=raw"""
# Egy $\xi$ valségi változó szórása mindig nemnegatív és csak akkor nulla, ha $\xi$ (lényegében) konstans.
# """,
# answer=true,
# )
# ,
(
body=raw"""
$\xi$ és $\eta$ független, véges értékkészletű valségi változókra:
$$
\D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)
$$
""",
answer=true,
fb=raw"{Páronként független valségi változókra a szórásnégyzet additív.}"
)
,
(
body=raw"""
A $\xi$ és $\eta$ valségi változókra:
$$
\D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)
$$
feltéve, hogy létezik a szórásuk.
""",
answer=false,
fb=raw"{Páronként független valségi változókra a szórásnégyzet additív, általában nem.}"
)

,
# (raw"""
# $\xi$ és $\eta$ véges értékkészletű valségi változókra:
# $$
# \D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)
# $$
# """,false)
# ,
(
body=raw"""
$\xi$ és $\eta$ $\xi$ és $\eta$ véges értékkészletű valségi változókra:
$$
\D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)+2\cov(\xi,\eta)
$$
""",
answer=true,
fb=raw"{Tétel. Ez tetszőleges v.v-kre is igaz.}")


)
