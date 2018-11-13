let
    qname="flenes"

qText=raw"""
\begin{multi}{flenes}
Azt mondjuk, hogy $A$ és $B$ események függetlenek, ha:
\item* $P(AB)=P(A)P(B)$
\item  $P(A+B)=P(A)+P(B)$
\item  $P(A+B)=P(A)+P(B)-P(AB)$
\item  $P(AB)=P(A)+P(B)$
\end{multi}
"""

    print(_out,qText)
end
