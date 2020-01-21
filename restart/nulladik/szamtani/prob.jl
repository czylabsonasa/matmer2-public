exname="szamtani"

m=rand(1:10)
n=m+rand(4:10)
am=rand(1:100)
an=rand(1:100)

jv=(n-m+1)*(an+am)//2
rv1=jv+1
rv2=jv-1
rv3=jv+3

jv,rv1,rv2,rv3=tstring.([jv,rv1,rv2,rv3])
m,n,am,an=string.([m,n,am,an])

body=raw"""
\begin{multi}{__EXNAME}
Egy számtani sorozatról tudjuk, hogy $a_{__m}=__am$ és $a_{__n}=__an$. Mennyi a 
$$
a_{__m}+\ldots +a_{__n}?
$$
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

body=reduce(replace,[
"__EXNAME"=>exname,
"__am"=>am,
"__an"=>an,
"__m"=>m,
"__n"=>n,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3],
init=body)
