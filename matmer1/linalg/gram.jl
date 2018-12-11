# matlabos kódrész nagyon gáz

let
   qname="gram"

   # zerovector....!
   b1=[0,0]
   b2=[0,0]
   while 1==1
      b1=(rand(1:5,2).-2)//1
      b2=(rand(1:5,2).-2)//1
      if b1[1]*b2[2]!=b1[2]*b2[1]
         break
      end
   end

   q1=copy(b1)
   q2=copy(b2)
   q2=q2-sum(q1.*q2)*q1//sum(q1.*q1)

   # ez itt az elejen kitalalt modon van megcsinalva, 
   
   jv=Tfr(toS(q1),"\\sqrt{"*toS(sum(q1.*q1))*"}")*", "*Tfr(toS(q2),"\\sqrt{"*toS(sum(q2.*q2))*"}")
   q1=q1+q2
   rv1=Tfr(toS(q1),"\\sqrt{"*toS(sum(q1.*q1))*"}")*", "*Tfr(toS(q2),"\\sqrt{"*toS(sum(q2.*q2))*"}")
   q1=q1-2*q2
   rv2=Tfr(toS(q1),"\\sqrt{"*toS(sum(q1.*q1))*"}")*", "*Tfr(toS(q2),"\\sqrt{"*toS(sum(q2.*q2))*"}")
   q2=q2+q1
   rv3=Tfr(toS(q1),"\\sqrt{"*toS(sum(q1.*q1))*"}")*", "*Tfr(toS(q2),"\\sqrt{"*toS(sum(q2.*q2))*"}")


   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Ortonormálja a $ b_1=__B1 $, $ b_2=__B2 $ vektorrendszert!
   \item* $ __JV $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
      "__QNAME",qname,
      "__B1",toS(b1),
      "__B2",toS(b2),
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])

   print(_out,qText)
end
