
proba=(
(
body=raw"""
Ha a minta normális sokaságból származik, ismert a szórás és a sokasági várható értékre (átlagra) 
vonatkozó kérdésről akarunk dönteni akkor $u$-próbát használhatunk.
""",
answer=true,
fb=raw"{Ezek az $u$-próba használatának előzményei.}"
)
,
(
body=raw"""
Ha a minta normális sokaságból származik és a sokasági várható értékre (átlagra) vonatkozó kérdésről 
akarunk dönteni akkor mindig az $u$-próbát használjuk.
""",
answer=false,
fb=raw"{A szórást ismerni kell.}"
)
,
(
body=raw"""
Ha a minta normális sokaságból származik, nem ismert a szórás és a sokasági várható értékre 
(átlagra) vonatkozó kérdésről akarunk dönteni akkor $t$-próbát használhatunk.
""",
answer=true,
fb=raw"{Ezek az $t$-próba használatának előzményei.}"
)
,
(
body=raw"""
Ha nem ismert a szórás és a sokasági várható értékre (átlagra) vonatkozó kérdésről 
akarunk dönteni akkor $t$-próbát használhatunk.
""",
answer=false,
fb=raw"{A normalitás fontos.}"
)
,
(
body=raw"""
Az $u$-próbánál a 
$$
u=\frac{\overline{X}-\mu_0}{\sigma}\sqrt{n}
$$
mennyiség segítségével döntünk a hipotéziseinkről.
""",
answer=true,
fb=raw"{A fenti formula az $u$-próba ún. próbastatisztikája.}"
)
,
(
body=raw"""
Az $t$-próbánál a 
$$
u=\frac{\overline{X}-\mu_0}{s}\sqrt{n}
$$
mennyiség segítségével döntünk a hipotéziseinkről.
""",
answer=true,
fb=raw"{A fenti formula a $t$-próba ún. próbastatisztikája.}"
)
,
(
body=raw"""
Az $u$-próbánál a 
$$
u=\frac{\overline{X}-\mu_0}{s}\sqrt{n}
$$
mennyiség segítségével döntünk a hipotéziseinkről.
""",
answer=false,
fb=raw"{A fenti formula az $t$-próba ún. próbastatisztikája.}"
)
,
(
body=raw"""
Az $t$-próbánál a 
$$
u=\frac{\overline{X}-\mu_0}{\sigma}\sqrt{n}.
$$
mennyiség segítségével döntünk a hipotéziseinkről.
""",
answer=false,
fb=raw"{A fenti formula a $u$-próba ún. próbastatisztikája.}"
)
,
(
body=raw"""
Ha egy $16$ elemű minta normális sokaságból származik, $\sigma=3$ és hipotéziseink:
$$
H_0: \mu=10
$$
$$
H_1: \mu\neq 10
$$
akkor az 
$$
\frac{\overline{X}-10}{3}4
$$
értékre úgy gondolunk, mint  egy sztenderd normális valségi változó megfigyelésére, ha $H_0$ igaz.
""",
answer=true,
fb=raw"{Igen, éppen ez alapján tudunk dönteni. Ahhoz képest hogy sztenderd normális átlagos, tipikus értéket, vagy kiugró, extrém értéket látunk.}"
)
,
(
body=raw"""
Ha egy $16$ elemű minta normális sokaságból származik, $\sigma=3$ és hipotéziseink:
$$
H_0: \mu=10
$$
$$
H_1: \mu\neq 10
$$
akkor az 
$$
\frac{\overline{X}-10}{3}4
$$
értékre úgy gondolunk, mint  egy $15$-szabadsági fokú Student valségi változó megfigyelésére, ha $H_0$ igaz.
""",
answer=false,
fb=raw"{A feltételek mellett a fenti mennyiség egy sztenderd normális megfigyelése, ha $H_0$ igaz.}"
)
,

(
body=raw"""
Ha egy $16$ elemű minta normális sokaságból származik,a szórást nem ismerjük, $s=3$ és hipotéziseink:
$$
H_0: \mu=10 \\
$$
$$
H_1: \mu\neq 10
$$
akkor az 
$$
\frac{\overline{X}-10}{3}4
$$
értéke egy $15$-szabadsági fokú Student valségi változó megfigyelése, ha $H_0$ igaz.
""",
answer=true,
fb=raw"{Igen, éppen ez alapján tudunk dönteni. Ahhoz képest hogy valségi változó $15$-szabadsági fokú Student eloszlású, átlagos, tipikus értéket, vagy kiugró, extrém értéket látunk.}"
)
,
(
body=raw"""
Ha egy $16$ elemű minta normális sokaságból származik, a szórás nem ismert, $s=3$ és hipotéziseink:
$$
H_0: \mu=10 \\
$$
$$
H_1: \mu\neq 10
$$
akkor az 
$$
\frac{\overline{X}-10}{3}4
$$
érték egy sztenderd normális változó megfigyelése, ha $H_0$ igaz.
""",
answer=false,
fb=raw"{A szórás nem ismert.}"
)
,


)
