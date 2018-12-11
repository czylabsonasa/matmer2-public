let
   qname="mtx"


   A=(rand(1:5,2,3).-2)//1
   B=(rand(1:5,2,3).-2)//1

   jv=toS((A+B)*transpose(A))
   rv1=toS((A+B)*transpose(B))
   rv2=toS((A-B)*transpose(A))
   rv3=toS((A-B)*transpose(B))

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Legyen $ A=__A$ és $ B=__B $. Végezze el a következő mátrix-műveleteket:
   $ (A+B)A^{T} $!
   \item* $ __JV  $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
   "__QNAME",qname,
   "__A",toS(A),
   "__B",toS(B),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3 ]
   )
   print(_out,qText)
end
