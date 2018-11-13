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


   jv=sC(conj(v)*w)*",\\ "*sC(v*conj(w)//h2(w))*",\\ "*sC(v-conj(w))
   rv1=sC(conj(w)*v)*",\\ "*sC(v*conj(w)//h2(w))*",\\ "*sC(v-conj(w))
   rv2=sC(conj(v)*v)*",\\ "*sC(v*conj(w)//h2(w))*",\\ "*sC(v+conj(w))
   rv3=sC(conj(v)*w)*",\\ "*sC(w*conj(v)//h2(v))*",\\ "*sC(v+conj(w))

   qText=raw"""
   \begin{multi}{__QNAME}
   Adott $v=__V$ és $w=__W$ komplex számok esetén számolja ki a
   $\overline{v}w,\ \frac{v}{w}, \ v-\overline{w}$ mennyiségeket!
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """
   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__V"=>sC(v))
   qText=replace(qText,"__W"=>sC(w))
   qText=replace(qText,"__JV"=>jv)
   qText=replace(qText,"__RV1"=>rv1)
   qText=replace(qText,"__RV2"=>rv2)
   qText=replace(qText,"__RV3"=>rv3)
   print(_out,qText)
end
