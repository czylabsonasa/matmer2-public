let

   qname="vek"

   v=(rand(1:5,3).-2)//1
   w=(rand(1:5,3).-2)//1
   r=rand(2:3)
   alfa=r//(rand(2:3)*r+1)

   jv=toS(v+alfa*w)*",\\ "*toS(sum(v.*w))
   rv1=toS(v-alfa*w)*",\\ "*toS(sum(v.*w))
   rv2=toS(alfa*v-w)*",\\ "*toS(2*sum(v.*w))
   rv3=toS(alfa*v+w)*",\\ "*toS(sum(v.*w))

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Legyen $v=__V$ és $w=__W$. Végezze el a következő vektorműveleteket:
   $v+__ALFA w, \ vw^{T}$!
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """,
   [
   "__QNAME",qname,
   "__V",toS(v),
   "__W",toS(w),
   "__ALFA",toS(alfa),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3
   ])

   print(_out,qText)
end
