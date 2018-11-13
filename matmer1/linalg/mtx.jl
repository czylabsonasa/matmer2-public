let
   qname="mtx"


   A=(rand(1:5,2,3).-2)//1
   B=(rand(1:5,2,3).-2)//1

   jv=sM((A+B)*transpose(A))
   rv1=sM((A+B)*transpose(B))
   rv2=sM((A-B)*transpose(A))
   rv3=sM((A-B)*transpose(B))

   qText=raw"""
   \begin{multi}{__QNAME}
   Legyen $A=__A$ és $B=__B$. Végezze el a következő mátrix-műveleteket:
   $(A+B)A^{T}$!
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """
   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__A"=>sM(A))
   qText=replace(qText,"__B"=>sM(B))
   qText=replace(qText,"__JV"=>jv)
   qText=replace(qText,"__RV1"=>rv1)
   qText=replace(qText,"__RV2"=>rv2)
   qText=replace(qText,"__RV3"=>rv3)
   print(_out,qText)
end
