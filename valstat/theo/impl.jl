  let
    qname="impl"

qText=raw"""
\begin{multi}{__QNAME}
Ha $A$ maga után vonja $B$-t akkor 
\item* $P(A)\le P(B)$
\item  $P(A)\neq P(B)$
\item  $A$ és $B$ függetlenek
\item  $A$ és $B$ sosem következik be egyszerre
\end{multi}
"""

qText=replace(qText,"__QNAME"=>qname)
print(_out,qText)

end
