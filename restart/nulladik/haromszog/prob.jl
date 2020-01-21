# egész-szám oldalú háromszögek száma
exname="haromszog"

mn=rand(1:3)
mx=mn+rand(2:4)
res=sum(1+(min(mx,a+b-1)-b) for a=mn:mx for b=a:mx)
# for a=mn:mx,b=a:mx,c=b:mx
#   if a+b>c println(stderr,(a,b,c)) end
# end

jv=res
rv1=res+1
rv2=res+2
rv3=res-1

jv,rv1,rv2,rv3,mn,mx=string.([jv,rv1,rv2,rv3,mn,mx])

body=raw"""
\begin{multi}{__EXNAME}
Hány olyan háromszög van, melyeknek oldalhosszúságai az $[__mn,__mx]$ 
intervallumbeli pozitív egészek?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

body=reduce(replace,[
"__EXNAME"=>exname,
"__mn"=>mn,
"__mx"=>mx,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3],
init=body)
