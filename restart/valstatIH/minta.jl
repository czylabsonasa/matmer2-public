
minta=(
(
body=raw"""
Egy $X_1,\ldots,X_n$ minta elemei független azonos eloszlású ($\sim X$) valségi változók. 
""",
answer=true,
fb=raw"{Definíció, ezért használatos a $X_1,\ldots,X_n\sim X$ jelölés}"
)
,
(
body=raw"""
Egy $X_1,\ldots,X_n\sim X$ minta esetén a mintaátlag $\overline{X}=\frac{X_1+\ldots+X_n}{n}$
""",
answer=true,
fb=raw"{Definíció}"
)
,
(
body=raw"""
Egy $X_1,\ldots,X_n\sim X$ minta esetén a mintaátlag $\overline{X}=\frac{X_1+\ldots+X_n}{n-1}$
""",
answer=false,
fb=raw"{Definíció}"
)
,
(
body=raw"""
Egy $X_1,\ldots,X_n\sim X$ minta esetén $\E(\overline{X})=\E(X)$.
""",
answer=true,
fb=raw"{A mintaátlag torzítatlan becslése a sokasági (elméleti) várható értéknek (átlagnak)}"
)
,
(
body=raw"""
Egy $X_1,\ldots,X_n\sim X$ minta korrigált empirikus szórásnégyzetén a 
$$
\frac{\sum_{k} (X_k-\overline{X})^2}{n}
$$
mennyiséget értjük.
""",
answer=false,
fb=raw"{Korrigált: $n-1$-el osztunk.}"
)
,
(
body=raw"""
Egy $X_1,\ldots,X_n\sim X$ minta korrigált empirikus szórásnégyzetén a 
$$
s^2=\frac{\sum_{k} (X_k-\overline{X})^2}{n-1}
$$
mennyiséget értjük.
""",
answer=true,
fb=raw"{Definíció.}"
)
,
(
body=raw"""
Az $s^2$ korrigált empirikus szórásnégyzetre $\E(s^2)=\D^2(X)$.
""",
answer=true,
fb=raw"{Az $s^2$ torzítatlan becslése a sokasági (elméleti) szórásnégyzetnek}"
)
,
(
body=raw"""
Az $s^2$ korrigált empirikus szórásnégyzetre $\E(s^2)=\E(X)$.
""",
answer=false,
fb=raw"{Az $s^2$ torzítatlan becslése a sokasági (elméleti) szórásnégyzetnek}"
)


)
