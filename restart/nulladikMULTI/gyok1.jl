let
   qname="gyok1"

   x=rand([2,3,5,6,7,10,11,13,15,17,19])
   y=rand(2:4)
   y2=y*y

   alak=["","","",""]
   valasz=["","","",""]
   jo=rand(1:4)
   
   
   function tfun(x::Int) 
      if abs(x)!=1 
         return string(x)
      else 
         if -1==x 
            return "-" 
         else 
            return "" 
         end 
      end
   end

   alak[1]="\\sqrt{$(string(x*y2))}+\\sqrt{$(string(x))}"
   valasz[1]=tfun(y+1)*"\\sqrt{$(string(x))}"

   alak[2]="\\sqrt{$(string(x*y2))}-\\sqrt{$(string(x))}"
   valasz[2]=tfun(y-1)*"\\sqrt{$(string(x))}"

   alak[3]="-\\sqrt{$(string(x*y2))}+\\sqrt{$(string(x))}"
   valasz[3]=tfun(1-y)*"\\sqrt{$(string(x))}"

   alak[4]="-\\sqrt{$(string(x*y2))}-\\sqrt{$(string(x))}"
   valasz[4]=tfun(-y-1)*"\\sqrt{$(string(x))}"

   alak[1],alak[jo]=alak[jo],alak[1]
   valasz[1],valasz[jo]=valasz[jo],valasz[1]



         
qText=raw"""
\begin{multi}{__QNAME}
Mivel egyenlő a $__ALAK$ kifejezés?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__ALAK"=>alak[1])
   qText=replace(qText,"__JV"=>valasz[1])
   qText=replace(qText,"__RV1"=>valasz[2])
   qText=replace(qText,"__RV2"=>valasz[3])
   qText=replace(qText,"__RV3"=>valasz[4])

   print(_out,qText)
end
