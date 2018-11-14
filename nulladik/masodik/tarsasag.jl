let
   qname="tarsasag"
   n=rand(9:13)
#   using StatsBase
   k=rand(2:4)
   kedv=sample(1:n,k,replace=false,ordered=true)
   tipus=rand(["nem",""])
   
   jv=k//n
   rv1=1-jv
   rv2=jv//2
   rv3=1-rv2

   if tipus=="nem"
      jv,rv1=rv1,jv
   end


qText=bRep(raw"""
\begin{multi}{__QNAME}
Egy $ __N $ tagú társaság tagjai egymás után lépnek be egy ajtón. Panna kedvenc számai: $ K=__KEDV $.
Mi a valsége, hogy Panna __TIP $ K $-beli helyen lép be az ajtón?
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
""",[
   "__QNAME",qname,
   "__N",string(n),
   "__KEDV",toS(kedv//1),
   "__TIP",tipus,
   "__JV",toS(jv),
   "__RV1",toS(rv1),
   "__RV2",toS(rv2),
   "__RV3",toS(rv3)
])

    print(_out,qText)

end
