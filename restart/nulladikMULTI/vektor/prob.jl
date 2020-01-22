exname="vektor"

pool=-20:20
A=rand(pool,2)//1
B=rand(pool,2)//1
C=rand(pool,2)//1
P=rand(pool,2)//1

jv=((A+B+C)//3 + P )//2
rv1=jv.+1//2
rv2=jv.+2//3
rv3=jv.-1//3

A,B,C,P,jv,rv1,rv2,rv3=tstring.([A,B,C,P,jv,rv1,rv2,rv3])

body=raw"""
\begin{multi}{__EXNAME}
Az $__A$, $__B$, $__C$ pontok által alkotott háromszög súlypontja és a $__P$ pont 
által alkotott szakasz $F$ felezőpontja:
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
"__C"=>C,
"__P"=>P,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3],
init=body)
