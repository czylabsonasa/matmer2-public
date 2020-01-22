exname="szamrsz"

n=rand(50:200)
n1,n2=sample(2:6,2,replace=false)


a1=string(n,base=n1)
jv=string(n,base=n2)*"_{$(n2)}"
rv1=string(n+1,base=n2)*"_{$(n2)}"
rv2=string(n+2,base=n2)*"_{$(n2)}"
rv3=string(n-1,base=n2)*"_{$(n2)}"

n1,n2=string.([n1,n2])


body=raw"""
\begin{multi}{__EXNAME}
$__A1_{__N1}=$ 

\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__N1"=>n1,
"__N2"=>n2,
"__A1"=>a1,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


