# 
markcseb=(
(
body=raw"""
Tetszőleges $\xi$ nemnegatív valségi változó és $\delta>0$ szám esetén:
$$
\P(\xi\ge \delta)\le \frac{\E(\xi)}{\delta}
$$
""",
answer=true,
fb=raw"{Ez a Markov-egyenlőtlenség}"
)
,
(
body=raw"""
Tetszőleges $\xi$ valségi változó és $\delta>0$ szám esetén:
$$
\P(\xi\ge \delta)\le \frac{\E(\xi)}{\delta}
$$
""",
answer=false,
fb=raw"{A nemnegatívitás fontos a Markov-egyenlőtlenséghez.}"
)
,
(
body=raw"""
Tetszőleges nemnegatív $\xi$ valségi változó és $\delta>0$ szám esetén:
$$
\P(\xi\ge 1)> \E(\xi)
$$
""",
answer=false,
fb=raw"{A nemnegatívitás fontos.}"
)
,
(
body=raw"""
Tetszőleges $\xi$ valségi változóra:
$$
\P(\xi^2\ge 1)\le \E(\xi^2)
$$
""",
answer=true,
fb=raw"{Ez éppen a Markov-egyenlőtlenség $\xi^2$-re és $\delta=1$-re.}"
)
,

(
body=raw"""
Tetszőleges $\xi$ valségi változóra, melynek létezik a szórása:
$$
\P(|\xi-\E(\xi)|\ge \delta)\le \frac{\D^2(\xi)}{\delta^2}
$$
ahol $\delta>0$ egy valós szám.
""",
answer=true,
fb=raw"{Ez a Csebisev-egyenlőtlenség}"
)
,
(
body=raw"""
Tetszőleges $\xi$ valségi változóra, melynek létezik a szórása:
$$
\P(|\xi-\E(\xi)|< \delta)\ge 1-\frac{\D^2(\xi)}{\delta^2}
$$
ahol $\delta>0$ egy valós szám.
""",
answer=true,
fb=raw"{Ez a Csebisev-egyenlőtlenség}"
)
,
(
body=raw"""
Tetszőleges $\xi$ valségi változóra, melynek létezik a szórása:
$$
\P(|\xi-\mu|< \sqrt{2}\sigma)\ge \frac{1}{2}
$$
ahol $\mu,\sigma$ a várható érték és a szórás.
""",
answer=true,
fb=raw"{Ez a Csebisev-egyenlőtlenség $\delta=\sqrt{2}\sigma$}"
)
,
(
body=raw"""
Tetszőleges $\xi$ valségi változóra, melynek létezik a szórása:
$$
\P(|\xi-\mu|\ge \sqrt{2}\sigma)\ge \frac{1}{2}
$$
ahol $\mu,\sigma$ a várható érték és a szórás.
""",
answer=false,
fb=raw"{Fordítva.}"
)
,

(
body=raw"""
Tetszőleges $\xi$ valségi változóra, melynek létezik a szórása:
$$
\P(|\xi-\mu|\le 2\sigma)\ge \frac{3}{4}
$$
ahol $\mu,\sigma$ a várható érték és a szórás.
""",
answer=true,
fb=raw"{Ez a Csebisev-egyenlőtlenség $\delta=2\sigma$-ra}"
)
,
(
body=raw"""
Tetszőleges $\xi$ valségi változóra, melynek létezik a szórása:
$$
\P(|\xi-\mu|\ge 2\sigma)\ge \frac{3}{4}
$$
ahol $\mu,\sigma$ a várható érték és a szórás.
""",
answer=false,
fb=raw"{Fordítva.}"
)
,


)
