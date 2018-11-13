let
   qname="erme1"

   db=rand(7:2:15)
   kedvezo=1 # páratlan
   osszes=2
   sol=kedvezo//osszes

   jv=sol
   rv1=(kedvezo+1)//(osszes+1)
   rv2=kedvezo//(osszes+1)
   rv3=1//db

qText=raw"""
\begin{multi}{__QNAME}
$__DB$ érmét feldobva, mennyi a valószínűsége hogy
több fejet kapunk mint írást ?
\item* $__JV$
\item $__RV1$
\item $__RV2$
\item $__RV3$
\end{multi}
"""

   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__DB"=>string(db))
   qText=replace(qText,"__JV"=>toS(jv))
   qText=replace(qText,"__RV1"=>toS(rv1))
   qText=replace(qText,"__RV2"=>toS(rv2))
   qText=replace(qText,"__RV3"=>toS(rv3))

   print(_out,qText)

end
