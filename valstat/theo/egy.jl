let
    qname="null"

qText=raw"""
\begin{multi}{__QNAME}
Ha $P(A)=1$ akkor
\item* $A$ bekövetkezhet
\item $A$ sosem következik be
\item $A$ mindig bekövetkezik
\item $A$ a biztos esemény
\end{multi}
"""

qText=replace(qText,"__QNAME"=>qname)
print(_out,qText)

end
