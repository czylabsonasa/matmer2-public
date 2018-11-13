let
   qname="trigorder"

   jo=["","",""]
   alfa=0
   if rand(0:1)>0
      jo=["C","S","T"]
      alfa=rand(46:89)
   else
      jo=["T","C","S"]
      alfa=rand(91:134)
   end

   alak=replace(raw"S,C,T=\sin(__ALFA^\circ),\cos(__ALFA^\circ),\tan(__ALFA^\circ)","__ALFA"=>string(alfa))




jv=jo[1]*"<"*jo[2]*"<"*jo[3]
jo[1],jo[2]=jo[2],jo[1]
rv1=jo[1]*"<"*jo[2]*"<"*jo[3]
jo[2],jo[3]=jo[3],jo[2]
rv2=jo[1]*"<"*jo[2]*"<"*jo[3]
jo[1],jo[2]=jo[2],jo[1]
rv3=jo[1]*"<"*jo[2]*"<"*jo[3]


qText=bRep(raw"""
\begin{multi}{__QNAME}
Legyen $__ALAK$. Ekkor:
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
""",[
    "__QNAME",qname,
    "__ALAK",alak,
    "__JV",jv,
    "__RV1",rv1,
    "__RV2",rv2,
    "__RV3",rv3
])

    print(_out,qText)

end
