let
   qname="geom1"

   pool=-20:20
   A=rand(pool,2)//1
   B=rand(pool,2)//1
   C=rand(pool,2)//1
   P=rand(pool,2)//1

   valasz=((A+B+C)//3 + P )//2

         
qText=raw"""
\begin{multi}{__QNAME}
Az $A__A$, $B__B$, $C__C$ pontok által alkotott háromszög súlypontja és a $P__P$ pont által alkotott 
szakasz $F$ felezőpontja:
\item* $F__JV$
\item  $F__RV1$
\item  $F__RV2$
\item  $F__RV3$
\end{multi}
"""

   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__A"=>toS(A))
   qText=replace(qText,"__B"=>toS(B))
   qText=replace(qText,"__C"=>toS(C))
   qText=replace(qText,"__P"=>toS(P))
   qText=replace(qText,"__JV"=>toS(valasz))
   qText=replace(qText,"__RV1"=>toS(valasz.+1))
   qText=replace(qText,"__RV2"=>toS(valasz.+1//2))
   qText=replace(qText,"__RV3"=>toS(valasz.-1//2))

   print(_out,qText)
end
