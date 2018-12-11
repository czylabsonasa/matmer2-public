let
   qname="parity"
   
   paros=[
      raw"\cos(x)",
      raw"2\cos(3x)",
      raw"-\cos(-7x)",
      raw"|x|",
      raw"|x+2|+|x-2|",
      raw"e^{x^2}",
      raw"e^{x}+e^{-x}",
      raw"\log(|x|+1)",
      raw"-\cos(x+\pi)",
      raw"\cos(x-\pi)"
   ]


   paratlan=[
      raw"\sin(x)",
      raw"2\sin(3x)",
      raw"-3\sin(-2x)",
      raw"x",
      raw"-6x",
      raw"|x+2|-|x-2|",
      raw"e^{x}-e^{-x}",
      raw"-\sin(x+\pi)",
      raw"\sin(x-\pi)"
   ]

   n=8
   p=rand(2:6)
   while 1==1
      if p!=n-p
         break
      end
      p=rand(2:6)
   end
   q=n-p

   #ezt mar a main-ban inkludaltam
   #using StatsBase
   ps=sample(paros,p,replace=false)
   qs=sample(paratlan,q,replace=false)
   pq=[ps;qs]
   sel=sample(pq,n,replace=false)
   sel=reshape(sel,2,4)
   jv=p
   rv1=q
   rv2=max(p,q)-1
   rv3=min(p,q)+1

   if rv2==rv3
      rv2=max(p,q)+1
   end
   


qText=replace(raw"""
\begin{multi}{__QNAME}
$$ __SEL $$
A fentiek közül a páros függvények száma:
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
""",[
   "__QNAME",qname,
   "__SEL",toS(sel,brac=false),
   "__JV",string(jv),
   "__RV1",string(rv1),
   "__RV2",string(rv2),
   "__RV3",string(rv3)
])

    print(_out,qText)

end
