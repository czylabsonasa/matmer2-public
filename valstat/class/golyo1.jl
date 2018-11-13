let
   qname="golyo1"
   K=rand(2:5)
   P=rand(2:5)
   S=rand(2:5)
   golyok=[K,P,S]
   szinek=["kék","piros","sárga"]

   hsz=rand(2:4)

   # ez a ket húzás
   most=rand(1:3,hsz) 
   huz=szinek[most]

   osszes=sum(golyok)^hsz
   kedvezo=1
   for i in most
      kedvezo=kedvezo*golyok[i]
   end

   jv=kedvezo//osszes
   rv1=(kedvezo+1)//(osszes+1)
   rv2=kedvezo//(osszes+1)
   rv3=(kedvezo-1)//osszes

qText=raw"""
\begin{multi}{__QNAME}
Egy dobozban van $__K$ kék, $__P$ piros és $__S$ sárga golyó. Visszatevéssel húzunk
$__HSZ$ golyót. Mi a valsége, hogy sorban: __HUZ golyót kapunk?
\item* $__JV$
\item $__RV1$
\item $__RV2$
\item $__RV3$
\end{multi}
"""

   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__K"=>string(K))
   qText=replace(qText,"__P"=>string(P))
   qText=replace(qText,"__S"=>string(S))
   qText=replace(qText,"__HSZ"=>string(hsz))
   qText=replace(qText,"__HUZ"=>toS(huz))
   qText=replace(qText,"__JV"=>toS(jv))
   qText=replace(qText,"__RV1"=>toS(rv1))
   qText=replace(qText,"__RV2"=>toS(rv2))
   qText=replace(qText,"__RV3"=>toS(rv3))

   print(_out,qText)

end
