exname="egyrsz"

n2=rand(10:50)
n1=rand(n2+2:2:100)
s=n1+n2
d2=(n1-n2)÷2

jv=n1
rv1=n2
rv2=n2-1
rv3=n1+1

n1,n2,s,d2=string.([n1,n2,s,d2])
jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])




body=raw"""
\begin{multi}{__EXNAME}
Annának és Bélának összesen $__S$ petákja van, ha a lány adna $__D2$ petákot 
a fiúnak, akkor ugyanannyi petákjuk lenne. Hány petákja van Annának?

\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__S"=>s,
"__D2"=>d2,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


