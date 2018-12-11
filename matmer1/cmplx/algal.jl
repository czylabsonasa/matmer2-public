let
   qname="algal"

   r()=rand(1:5)

   v=r()//1+r()//1*im
   w=r()//1+r()//1*im
   if rand(0:1)>0
      v=conj(v)
   end
   if rand(0:1)>0
      w=conj(w)
   end


   jv=toS(conj(v)*w)*",\\ "*toS(v*conj(w)//h2(w))*",\\ "*toS(v-conj(w))
   rv1=toS(conj(w)*v)*",\\ "*toS(v*conj(w)//h2(w))*",\\ "*toS(v-conj(w))
   rv2=toS(conj(v)*v)*",\\ "*toS(v*conj(w)//h2(w))*",\\ "*toS(v+conj(w))
   rv3=toS(conj(v)*w)*",\\ "*toS(w*conj(v)//h2(v))*",\\ "*toS(v+conj(w))

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Adott $v=__V$ és $w=__W$ komplex számok esetén számolja ki a
   $\overline{v}w,\ \frac{v}{w}, \ v-\overline{w}$ mennyiségeket!
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
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])
   print(_out,qText)
end
