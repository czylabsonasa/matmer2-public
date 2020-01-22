exname="eval"

poli=ranPoly(2,2,0.25)
alak=tstring(poli)

#println(poli)
x,y=rand(-2:2,2)
jv=evalPoly(poli,x,y)
rv1=rand([-1,1])*(jv.num+1)//jv.den
rv2=rand([-1,1])*(jv.num+2)//(jv.den+1)
rv3=rand([-1,1])*(jv.num+3)//jv.den

x,y,jv,rv1,rv2,rv3=tstring.([x,y,jv,rv1,rv2,rv3]//1)

body=raw"""
\begin{multi}{__EXNAME}
Mennyi a $__ALAK$ kifejezés értéke $x=__X$ és $y=__Y$ esetén?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__ALAK"=>alak,
"__X"=>x,
"__Y"=>y,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)
