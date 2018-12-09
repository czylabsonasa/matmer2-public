let
   qname="lagrange"

   d=rand(2:3)
   p=(rand(1:4,1,d+1).-2)
   p[1]=1
   t=sample(-3:4,d+2,replace=false)
   f=horner(p).(t)

   jv=toS(p)
   rv1=toS(t)
   h=horner(p)
   rv2=toS(f)
   rv3=jv

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   \item* $ __JV $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
      "__QNAME",qname,
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])

   print(_out,qText)
end
