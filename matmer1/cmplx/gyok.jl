let
   qname="gyok"

   r=rand(3:5)
   h=rand(2:4)

   alfa=r//(2*r+1) # *pi
   z="$(h*h*h)\\left(\\cos($(sR(alfa))\\pi)+\\sin($(sR(alfa))\\pi)i\\right)"

   jv="$(h)\\left($(trig(alfa//6))\\right)"
   alfa=alfa//3
   rv1="$(h)\\left($(trig(alfa))\\right)"
   alfa=alfa+2//3
   rv2="$(h)\\left($(trig(alfa))\\right)"
   alfa=alfa+2//3
   rv3="$(h)\\left($(trig(alfa))\\right)"

   qText=raw"""
   \begin{multi}{__QNAME}
   Jelölje meg azt amely nem harmadik gyöke a $z=__Z$ komplex számnak.
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """
   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__Z"=>z)
   qText=replace(qText,"__JV"=>jv)
   qText=replace(qText,"__RV1"=>rv1)
   qText=replace(qText,"__RV2"=>rv2)
   qText=replace(qText,"__RV3"=>rv3)
   print(_out,qText)
end
