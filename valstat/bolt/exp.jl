let
   qname="boltExp"

   EX=rand(2:5) # a várható érték
   lambda=1//EX
   M=rand(EX:(EX+3))

   kit=-lambda*M
   jv=replace(raw"e^{__KIT}",["__KIT",toS(kit)])
   rv1=replace(raw"e^{__KIT}",["__KIT",toS(kit//2)])
   rv2=replace(raw"e^{__KIT}",["__KIT",toS(kit//3)])
   rv3=replace(raw"e^{__KIT}",["__KIT",toS(-M)])

qText=replace(raw"""
\begin{multi}{boltExp}
Egy forgalmas benzinkútnál a tapasztalatok szerint a sorbanállás pillanatától a tankolás megkezdéséig
eltelt percek száma exponenciális eloszlású. Tudjuk, hogy átlagosan $ __EX $ percet kell várni. 
Egy barátom felhív a sorbaállás kezdetekor, és azt mondja $ __M $ perc múlva odajön. Mennyi a valsége, 
hogy még sorbanállok, amikor megérkezik. (tegyük fel, hogy valóban megérkezik a mondott időben.)
\item* $ __JV $
\item $ __RV1 $
\item $ __RV2 $
\item $ __RV3 $
\end{multi}
""",[
   "__QNAME",qname,
   "__EX",toS(EX),
   "__M",toS(M),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3
])
   print(_out,qText)


end
