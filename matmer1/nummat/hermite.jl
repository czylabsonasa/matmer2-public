let
   qname="hermite"

   nt=3 # pontok száma
   ndat=5 # adatok 3 + 1 + 2
   pol=(rand(-2:3,1,ndat))
   pol[1]=1

   t=sample(-3:3,nt,replace=false)
   p=horner(pol)
   dpol=polyDer(pol)
   dp=horner(dpol)
   ddpol=polyDer(dpol)
   ddp=horner(ddpol)

   f=p.(t)
   df=dp.(t)
   ddf=ddp.(t)
   
   marad=collect(setdiff(Set(-4:4),Set(t)))
   t1=rand(marad)
   p1=p(t1)

   t=map(toS,vcat("t",t))
   f=map(toS,vcat("f",f))
   df=map(toS,vcat(raw"f^{'}",df))
   ddf=map(toS,vcat(raw"f^{''}",ddf))
   tab=hcat(t,f,df,ddf)
   tab[2,4]=""
   tab[3,3]=tab[3,4]=""
   tab=toTable(permutedims(tab,(2,1)))


   jv=toS(p1)
   rv1=toS(p1+1)
   rv2=toS(p1-1)
   rv3=toS(p1+2)
   
   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Illesszünk minimális fokszámú $ p $ polinomot a 
   $$ __TAB $$
   adatokra. A kapott polinomra $ p(__T1)=$
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
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])

   print(_out,qText)
end
