let
    qname="valelo"

qText=raw"""
\begin{multi}{valelo}
Azt mondjuk, hogy a $p_1,p_2,\ldots,p_k,\ldots$ számsorozat valószínűségeloszlás, ha:
\item* $p_k\ge 0$ és $\sum_k p_k=1$
\item  $p_k\ge p_{k+1}$ és $\sum_k p_k<\infty$
\item  $p_k=\frac{1}{2^k}\ k\ge 1$
\item  $p$ binomiális vagy geometriai
\end{multi}
"""

    print(_out,qText)
end
