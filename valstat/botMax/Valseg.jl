let
   qname="botMaxValseg"

   h=2+rand(2:2:10) # a bot hossza
   # Y=max(X,h-X)<x
   # X<x h-X<x -->
   # h-x < X < x
   # Y ~ U(h/2,h)

   h2=Int(floor(h/2))
   B=rand((h2+1):h);
   A=rand(1:(B-1))


   rA=A
   if rA<h2
     rA=h2;
   end

   A//=1
   B//=1
   rA//=1


   jv=2*(B-rA)//h
   rv1=(B-rA)//(2*h)
   rv2=2*(B-rA)//(3*h)
   rv3=(B-rA)//h

qText=replace(raw"""
\begin{multi}{__QNAME}
Egy $ __H $ méter hosszú botot  egy csapással véletlenszerűen kettétörünk.
Legyen $ Y $ a keletkezett részek hosszának maximuma. Mennyi $ P(__A<Y<__B) $?
\item* $__JV$
\item $__RV1$
\item $__RV2$
\item $__RV3$
\end{multi}
""",[
   "__QNAME",qname,
   "__H",string(h),
   "__A",toS(A),
   "__B",toS(B),
   "__JV",toS(jv),
   "__RV1",toS(rv1),
   "__RV2",toS(rv2),
   "__RV3",toS(rv3)
])

   print(_out,qText)

end
