let
   qname="botMinValseg"

   h=2+rand(2:2:10) # a bot hossza
   # komplementert érdemes vizsgálni
   # Y=min(X,h-X)>x
   # X>x h-X>x --> 
   # x < X < h - x
   # Y ~ U(0,h/2)
   h2=Int(floor(h/2))
   A=rand(1:(h2-1));
   B=rand((A+1):h);
   
   rB=B
   if rB>h2
     rB=h2
   end
   
   A//=1
   B//=1
   rB//=1
   
   
   jv=2*(rB-A)//h
   rv1=2*rB//h
   rv2=2*A//h
   rv3=(rB-A)//h

qText=replace(raw"""
\begin{multi}{__QNAME}
Egy $ __H $ méter hosszú botot  egy csapással véletlenszerűen kettétörünk. 
Legyen $ Y $ a keletkezett részek hosszának minimuma. Mennyi $ P(__A<Y<__B) $?
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
