let
   qname="condinf"

   using LinearAlgebra
   #n=rand(3:5)
   n=3 # igy is eleg szamitasigenyes

   A=zeros(Int,n,n)//1
   while true
      A=rand(-10:10,n,n)//1
      dA=abs(det(A))
      if dA>0 && dA<20
         break
      end
   end

   tip=["1","\\infty"]
   t=2 # igy fixen be lehet rakni kulon-kulon
   iA=inv(A)
   c=[mopnorm(A,1)*mopnorm(iA,1), mopnorm(A,-1)*mopnorm(iA,-1)]

   jv=toS(c[t])
   rv1=toS(c[t]+1)
   rv2=toS(c[3-t]+1)
   rv3=toS(c[3-t])
   qText=replace(
      raw"""
      \begin{multi}{__QNAME}
      Ha $A=__A$, akkor $cond_{__T}(A)=$
      \item* $__JV$
      \item $__RV1$
      \item $__RV2$
      \item $__RV3$
      \end{multi}
      """, [
         "__QNAME",qname,
         "__T",tip[t],
         "__A",toS(A),
         "__JV",jv,
         "__RV1",rv1,
         "__RV2",rv2,
         "__RV3",rv3])

    print(_out,qText)

end
