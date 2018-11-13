let

   qname="vek"

   v=(rand(1:5,3).-2)//1
   w=(rand(1:5,3).-2)//1
   r=rand(2:3)
   alfa=r//(rand(2:3)*r+1)

   jv=sV(v+alfa*w)*",\\ "*sR(sum(v.*w))
   rv1=sV(v-alfa*w)*",\\ "*sR(sum(v.*w))
   rv2=sV(alfa*v-w)*",\\ "*sR(2*sum(v.*w))
   rv3=sV(alfa*v+w)*",\\ "*sR(sum(v.*w))

   qText=raw"""
   \begin{multi}{__QNAME}
   Legyen $v=__V$ és $w=__W$. Végezze el a következő vektorműveleteket:
   $v+__ALFA w, \ vw^{T}$!
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """
   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__V"=>sV(v))
   qText=replace(qText,"__W"=>sV(w))
   qText=replace(qText,"__ALFA"=>sR(alfa))
   qText=replace(qText,"__JV"=>jv)
   qText=replace(qText,"__RV1"=>rv1)
   qText=replace(qText,"__RV2"=>rv2)
   qText=replace(qText,"__RV3"=>rv3)
   print(_out,qText)
end
