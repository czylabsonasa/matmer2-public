let
   qname="mtx"


   A=(rand(-3:4,3,5))//1
   aA=abs.(A)
   for i=1:3
      A[i,i]=sum(aA[i,:])-aA[i,i]+1
      A[i,i]*=rand([-1,1])
   end
   b=rand(-3:4,3,1)
   Ab=hcat(A,b)

   jv=toS(A)
   rv1=toS("")
   rv2=toS("")
   rv3=toS("")

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Az $ __Ab $ kibővített mátrixú egyenletrendszer megoldása:
   \item* $ __JV  $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
   "__QNAME",qname,
   "__Ab",toS(Ab),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3 ]
   )
   print(_out,qText)
end
