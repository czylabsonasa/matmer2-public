let
   qname="eval"

   x=rand(-2:2)
   y=rand(-2:2)
   ertek,alak=ranPoly(x,y)

qText=raw"""
\begin{multi}{__QNAME}
Mennyi a $__ALAK$ kifejezés értéke $x=__X$ és $y=__Y$ esetén?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

    qText=replace(qText,"__QNAME"=>qname)
    qText=replace(qText,"__ALAK"=>alak)
    qText=replace(qText,"__X"=>string(x))
    qText=replace(qText,"__Y"=>string(y))
    qText=replace(qText,"__JV"=>string(ertek))
    qText=replace(qText,"__RV1"=>string(ertek+1))
    qText=replace(qText,"__RV2"=>string(ertek-1))
    qText=replace(qText,"__RV3"=>string(ertek+2))
    print(_out,qText)
end
