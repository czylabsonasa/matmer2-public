# véges értékkészlet
dvv=(
(raw"""
Egy $p_1,\ldots, p_n$ vektor pont akkor valségeloszlás, ha $\sum_{k=1}^n p_k=1$.
""",false)
,
(raw"""
Egy nemnegatív tagú $p_1,\ldots, p_n$ vektor pont akkor valségeloszlás, ha $\sum_{k=1}^n p_k=1$.
""",true)
,

(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a várható értéke:
$$
\E(\xi)=\sum_{k=1}^n \P(\xi=x_k)x_k
$$
""",true)
,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a várható értéke:
$$
\E(\xi)=\frac{\sum_{k=1}^n x_k}{n}
$$
""",false)
,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor:
$$
\min_k(x_k)\le \E(\xi) \le \max_k(x_k)
$$
""",true)

,

(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a szórása:
$$
\D(\xi)=\sum_{k=1}^n \P(\xi=x_k)(x_k-\E(\xi))^2
$$
""",false)
,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. Ekkor a szórásnégyzete:
$$
\D^2(\xi)=\sum_{k=1}^n \P(\xi=x_k)(x_k-\E(\xi))^2
$$
""",true)
,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel és $p_k=\P(\xi=x_k)$. 
Ekkor a második momentuma:
$$
\E(\xi^2)=\sum_{k=1}^n x_k^2 p_k
$$
""",true)
,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel és $p_k=\P(\xi=x_k)$. 
Ekkor a második momentuma:
$$
\E(\xi^2)=\sum_{k=1}^n x_k p_k^2
$$
""",false)

,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots, x_n$ értékeket veheti fel. 
Ekkor a szórásnégyzete:
$$
\D^2(\xi)=\E(\xi^2)-\E(\xi)^2
$$
""",true)
,
(raw"""
Egy $\xi$ valségi változó az $x_1,\ldots ,x_n$ értékeket veheti fel. 
Ekkor a szórásnégyzete:
$$
\D^2(\xi)=\E(\xi^2)-\E(\xi)
$$
""",false)
,
(raw"""
Egy $\xi$ valségi változó szórása mindig pozitív.
""",false)
,
(raw"""
Egy $\xi$ valségi változó szórása mindig nemnegatív és csak akkor nulla, ha $\xi$ (lényegében) konstans.
""",true)
,
(raw"""
$\xi$ és $\eta$ független, véges értékkészletű valségi változókra:
$$
\D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)
$$
""",true)
,
(raw"""
A $\xi$ és $\eta$ valségi változókra:
$$
\D(\xi+\eta)=\D(\xi)+\D(\eta)
$$
feltéve, hogy létezik a szórásuk.
""",false)

,
(raw"""
$\xi$ és $\eta$ véges értékkészletű valségi változókra:
$$
\D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)
$$
""",false)
,
(raw"""
$\xi$ és $\eta$ $\xi$ és $\eta$ véges értékkészletű valségi változókra:
$$
\D^2(\xi+\eta)=\D^2(\xi)+\D^2(\eta)+2\cov(\xi,\eta)
$$
""",true)


)
