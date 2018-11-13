let
    qname="demorg2"

qText=raw"""
\begin{multi}{__QNAME}
Legyen $A$ és $B$ két esemény, $C=\overline{AB}$ és $D=\overline{A}+\overline{B}$. Ekkor
\item* $P(C)=P(D)$
\item $C$ és $D$ függetlenek
\item $C$ és $D$ kizárják egymást
\item $C$ maga után vonja $D$-t, de fordítva nem
\end{multi}
"""

    qText=replace(qText,"__QNAME"=>qname)
    print(_out,qText)

end
