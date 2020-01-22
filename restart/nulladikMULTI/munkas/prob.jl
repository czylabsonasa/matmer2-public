# klasszikus altalanos iskolas a=1,b=1-re redukalni es felszorozni
exname="munkas"

a=rand(2:6)
b=rand(3:10)
c=rand(10:40)

A=rand(2:6)
B=rand(3:10)


c11=(c//a)//b
jv=c11*A*B
rv1=(jv.num+1)//jv.den
rv2=(jv.num+2)//jv.den
rv3=(jv.num-1)//jv.den

a,b,c=string.([a,b,c])
A,B=string.([A,B])
jv,rv1,rv2,rv3=tstring.([jv,rv1,rv2,rv3])




body=raw"""
\begin{multi}{__EXNAME}
Ha $__a$ munkás $__b$ óra alatt $__c$ köbméter földet hord el, akkor
$__A$ munkás $__B$ óra alatt mennyit? 

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
"__a"=>a,
"__b"=>b,
"__c"=>c,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3],
init=body)
