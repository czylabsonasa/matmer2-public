let
   qname="reg1"

   m=rand(5:7)
   t=rand(-4:4,m)//1
   f=rand(-3:3,m)//1
   fun1(x)=1//1
   fun2(x)=x//1
   fun=[fun1,fun2]

   A=hcat(fun[1].(t),fun[2].(t))
   At=transpose(A)
   EH=At*A #egyutthato matrix
   JO=At*f #jobb-oldal

   b=EH\JO


   jv=polyToS(b,x="t")
   b[1]*=(-1);
   rv1=polyToS(b,x="t")   
   b[2]*=(-1);
   rv2=polyToS(b,x="t")
   b[1]*=(-1);
   rv3=polyToS(b,x="t")

   qText=replace(
      raw"""
      \begin{multi}{__QNAME}
      Adja meg az alábbi adatokat legkisebb négyzetes értelemben legjobban 
      közelítő $ a+b t$ alakú fügvvényt!
      $$ __TBL $$
      \item* $__JV$
      \item $__RV1$
      \item $__RV2$
      \item $__RV3$
      \end{multi}
      """, [
         "__QNAME",qname,
         "__TBL",toTable(t,"t",f,"f"),
         "__JV",jv,
         "__RV1",rv1,
         "__RV2",rv2,
         "__RV3",rv3])

    print(_out,qText)

end
