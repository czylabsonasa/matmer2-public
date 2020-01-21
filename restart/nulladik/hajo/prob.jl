exname="hajo"


d1,d2,d3,d4=rand(6:29,4)
jv=lcm([d1,d2,d3,d4])
rv1=2jv
rv2=jv÷d2
rv3=jv÷d4

d1,d2,d3,d4=string.([d1,d2,d3,d4])

jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])


body=raw"""
\begin{multi}{__EXNAME}
Egy kikötőben $4$ hajót rakodnak, melyek rendre $__D1,__D2,__D3,__D4$ naponta térnek 
vissza ugyanide. Hány nap múlva találkozhatnak legközelebb a kapitányok?
\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__D1"=>d1,
"__D2"=>d2,
"__D3"=>d3,
"__D4"=>d4,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


