# matlabos kódrész nagyon gáz

let
   qname="gram"

   # zerovector....!
   b1=(rand(1:5,2).-2)//1
   b2=(rand(1:5,2).-2)//1

   q1=copy(b1)
   q2=copy(b2)
   q2=q2-sum(q1.*q2)*q1//sum(q1.*q1)

   jv=Tfr(sM(q1),"\\sqrt{"*sR(sum(q1.*q1))*"}")*", "*Tfr(sM(q2),"\\sqrt{"*sR(sum(q2.*q2))*"}")
   q1=q1+q2
   rv1=Tfr(sM(q1),"\\sqrt{"*sR(sum(q1.*q1))*"}")*", "*Tfr(sM(q2),"\\sqrt{"*sR(sum(q2.*q2))*"}")
   q1=q1-2*q2
   rv2=Tfr(sM(q1),"\\sqrt{"*sR(sum(q1.*q1))*"}")*", "*Tfr(sM(q2),"\\sqrt{"*sR(sum(q2.*q2))*"}")
   q2=q2+q1
   rv3=Tfr(sM(q1),"\\sqrt{"*sR(sum(q1.*q1))*"}")*", "*Tfr(sM(q2),"\\sqrt{"*sR(sum(q2.*q2))*"}")


   qText=raw"""
   \begin{multi}{__QNAME}
   Ortonormálja a $b_1=__B1$, $b_2=__B2$ vektorrendszert!
   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """
   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__B1"=>sM(b1))
   qText=replace(qText,"__B2"=>sM(b2))
   qText=replace(qText,"__JV"=>jv)
   qText=replace(qText,"__RV1"=>rv1)
   qText=replace(qText,"__RV2"=>rv2)
   qText=replace(qText,"__RV3"=>rv3)
   print(_out,qText)
end
