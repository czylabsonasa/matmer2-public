let
   qname="trigform"
   
   p=rand(2:7)
   q=rand((p+1):(p+5))
   a=q^2-p^2
   b=2*p*q
   c=q^2+p^2

   A=a//c
   if rand(0:1)>0
      A=-A
   end
   B=b//c
   if rand(0:1)>0
      B=-B
   end
      
   sol=[
      ["\\sin(2\\alpha)",2*A*B],
      ["\\cos(2\\alpha)",2*B^2-1]
   ]

   j=rand(1:2)
   r=3-j




qText=replace(raw"""
\begin{multi}{__QNAME}
Tudjuk, hogy $ \sin(\alpha) =__A$ és $ \cos(\alpha) = __B $. Ekkor $__QUEST$:
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
""",[
   "__QNAME",qname,
   "__A",toS(A),
   "__B",toS(B),
   "__QUEST",sol[j][1],
   "__JV",toS(sol[j][2]),
   "__RV1",toS(-sol[j][2]),
   "__RV2",toS(sol[r][2]),
   "__RV3",toS(-sol[r][2])
])

    print(_out,qText)

end
