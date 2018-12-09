let
   qname="det"


   A=(rand(1:6,3,3).-2)//1
  
   dA=det(A)//1
   jv=toS(dA)
   rv1=toS(dA+1)
   rv2=toS(dA+2)
   rv3=toS(dA-2)

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Legyen $$A=__A$$ Ekkor $det(A)=$
   \item* $ __JV  $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
   "__QNAME",qname,
   "__A",toS(A),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3 ]
   )
   print(_out,qText)
end
