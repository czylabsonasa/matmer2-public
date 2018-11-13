let
   qname="linearis"
   a=rand(-10:10)
   b=a+rand(1:10)
   
   fa=rand(-10:10)
   fb=rand(-10:10)
   
   d=rand(1:3)
   q=0
   fq=0
   if rand(0:1)>1
      q=b+d*(b-a)
      fq=fb+d*(fb-fa)
   else
      q=a-d*(b-a)
      fq=fb-d*(fb-fa)
   end
   
alak="f("*string(a)*")="*string(fa)*", "*"f("*string(b)*")="*string(fb)
Q="f("*string(q)*")"

jv=string(fq)
rv1=string(fq+1)
rv2=string(fq+2)
rv3=string(fq-2)

qText=bRep(raw"""
\begin{multi}{__QNAME}
Egy elsőfokú $f$ függvényről tudjuk, hogy $__ALAK$. Mennyi $__Q$ ?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
""",[
    "__QNAME",qname,
    "__ALAK",alak,
    "__Q",Q,
    "__JV",jv,
    "__RV1",rv1,
    "__RV2",rv2,
    "__RV3",rv3
])

    print(_out,qText)

end
