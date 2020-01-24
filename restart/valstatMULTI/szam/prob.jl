exname="szam"

d=rand(3:9)
kedvezo=let
  kedvezo=0
  for kezd=d:9
    kedvezo+=binomial(kezd-1,d-1)
  end
  kedvezo
end
osszes=10^d-10^(d-1)

jv=kedvezo//osszes
rv1=(kedvezo+1)//(osszes+1)
rv2=kedvezo//(osszes+1)
rv3=(kedvezo-1)//osszes

jv,rv1,rv2,rv3=tstring.([jv,rv1,rv2,rv3])

body=mreplace(
raw"""
\begin{multi}{__EXNAME}
Véletlenszerűen választva egyet az összes $__D$ jegyű ($10$-es rendszerben felírt) számot, 
mennyi az esélye hogy a 
jegyei szigorúan monoton csökkenő sorozatot alkotnak? (balról-jobbra)
\item* $__JV$
\item $__RV1$
\item $__RV2$
\item $__RV3$
\end{multi}
"""
,
[
   "__EXNAME"=>exname,
   "__D"=>d,
   "__JV"=>jv,
   "__RV1"=>rv1,
   "__RV2"=>rv2,
   "__RV3"=>rv3
])
