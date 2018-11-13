let
    qname="demorg1"

qText=raw"""
\begin{multi}{__QNAME}
Legyen $A$ és $B$ két esemény. Ha $C=\overline{A+B}$ és $D={\overline{A}}^{}\ {\overline{B}}$ akkor
\item* $P(C)=P(D)$
\item $P(C)>P(D)$
\item $C$ és $D$ függetlenek
\item $C$ és $D$ kizárják egymást
\end{multi}
"""

    qText=replace(qText,"__QNAME"=>qname)
    print(_out,qText)

end
