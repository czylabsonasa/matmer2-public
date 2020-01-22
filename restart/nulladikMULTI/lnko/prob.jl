exname="lnko"

pool=10:100
A=rand(pool)
B=rand(pool)

jv=[gcd(A,B),lcm(A,B)]
desc=["legnagyobb közös osztója","legkisebb közös többszöröse"]
ch=rand(1:2)

desc=desc[ch]
jv=jv[ch]
rv1=jv+1
rv2=jv+2
rv3=jv+3


body=raw"""
\begin{multi}{__EXNAME}
Az $__A$ és $__B$ számok __desc:
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

body=reduce(replace,[
"__EXNAME"=>exname,
"__A"=>A,
"__B"=>B,
"__desc"=>desc,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3],
init=body)
