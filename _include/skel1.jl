let
    qname=""

    a1=123

    jv=sR(1//123)
    rv1=""
    rv2=""
    rv3=""


qText=raw"""
\begin{multi}{__QNAME}
A [0,1] intervallumon kiválasztunk két számot.
Mennyi a valószínűsége, hogy az egyik szám több mint
__A1x akkora mint a másik?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

    qText=replace(qText,"__QNAME"=>qname)
    qText=replace(qText,"__A1"=>string(a1))
    qText=replace(qText,"__JV"=>jv)
    qText=replace(qText,"__RV1"=>rv1)
    qText=replace(qText,"__RV2"=>rv2)
    qText=replace(qText,"__RV3"=>rv3)
    print(_out,qText)

end
