let
   qname="lagrange"

   d=rand(2:3)
   pol=(rand(1:4,1,d+1).-2)
   pol[1]=1
   t=sample(-4:4,d+2,replace=false)
   p=horner(pol)
   f=p.(t)

   tf=permutedims(hcat(vcat("t",t),vcat("f",f)),(2,1))
   tab=toTable(map(toS,tf))

   marad=collect(setdiff(Set(-4:4),Set(t)))
   t1,t2=sample(marad,2,replace=false)
   p1,p2=p(t1),p(t2)

   jv=toS(p1)*","*toS(p2)
   rv1=toS(p1+1)*","*toS(p2)
   rv2=toS(p1)*","*toS(p2+1)
   rv3=toS(p1+1)*","*toS(p2+1)
   
   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Illesszünk minimális fokszámú $ p $ polinomot a 
   $$ __TAB $$
   adatokra. A kapott polinomra $ p(__T1),p(__T2)= $
   \item* $ __JV $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
      "__QNAME",qname,
      "__TAB",tab,
      "__T1",toS(t1),
      "__T2",toS(t2),
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])

   print(_out,qText)
end
