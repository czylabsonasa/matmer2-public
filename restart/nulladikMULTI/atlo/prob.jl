exname="atlo"

n=rand(6:32)
at=(n*(n-1))÷2-n

jv=n


rv1,rv2,rv3=sample(setdiff(jv-3:jv+3,[jv]),3,replace=false)

jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])

body=mreplace(
raw"""
\begin{multi}{__EXNAME}
Egy konvex $n$-szög átlóinak száma: $__AT$. Ekkor $n=$
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""
,
[
  "__EXNAME"=>exname,
  "__AT"=>at,
  "__JV"=>jv,
   "__RV1"=>rv1,
   "__RV2"=>rv2,
   "__RV3"=>rv3
])

