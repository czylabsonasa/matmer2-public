exname="logeq"

A=rand(2:10)
B=rand(2:10)

eq=reduce(
  replace,
  ["__A"=>string(A),"__B"=>string(B)],
  init=raw"\log(x-__A)+\log(x+__A)=2\log(__B)"
)


jv=A^2+B^2
rv1=A^2
rv2=-B^2
rv3=2*(A^2+B^2)

A,B=string.([A,B])
jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])


body=raw"""
\begin{multi}{__EXNAME}
A $ __EQ $ egyenlet megoldása:
\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__EQ"=>eq,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


