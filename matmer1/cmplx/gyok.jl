let
   qname="gyok"

   r=rand(3:5)
   h=rand(2:4)

   alfa=r//(2*r+1) # *pi
   z="$(h*h*h)\\left(\\cos($(toS(alfa))\\pi)+\\sin($(toS(alfa))\\pi)i\\right)"

   jv="$(h)\\left($(trig(alfa//6))\\right)"
   alfa=alfa//3
   rv1="$(h)\\left($(trig(alfa))\\right)"
   alfa=alfa+2//3
   rv2="$(h)\\left($(trig(alfa))\\right)"
   alfa=alfa+2//3
   rv3="$(h)\\left($(trig(alfa))\\right)"

   qText=bRep(raw"""
   \begin{multi}{__QNAME}
   Jelölje meg azt amely nem harmadik gyöke a $z=__Z$ komplex számnak.
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """,
   [
      "__QNAME",qname,
      "__Z",z,
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])
   print(_out,qText)
end
