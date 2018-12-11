let
   qname="logeq"
   q=rand(2:5)
   p=rand(q+1:q+4)
   A=p^2-q^2
   B=2*p*q
   C=p^2+q^2
   eq=replace(raw"\log(x-__A)+\log(x+__A)=2\log(__B)",["__A",string(A),"__B",string(B)])

   jv=C
   rv1=[C,-C]
   rv2=[C,B]
   rv3=[A,B]


qText=replace(raw"""
\begin{multi}{__QNAME}
A $ __EQ $ egyenlet megoldása:
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
""",[
   "__QNAME",qname,
   "__EQ",eq,
   "__JV","x="*toS(jv//1),
   "__RV1","x="*toS(rv1//1,brac=false),
   "__RV2","x="*toS(rv2//1,brac=false),
   "__RV3","x="*toS(rv3//1,brac=false),
])

    print(_out,qText)

end
