let
   qname="hanyados"
   
   # x_n = a^(n+b) / (n+c)!
   # x_(n+d) / x_n a kerdes

   a=rand(2:5)
   b=rand(1:3)
   c=rand(1:3)
   d=rand(2:4)

   function helper(a::Int,b::Int,c::Int,d::Int)
      num=string(a)*"^"*string(d)
      denom=""
      for it in 1:d
         denom=denom*"(n+"*string(c+it)*")"
      end
      return "\\frac{"*num*"}{"*denom*"}"
   end

adatnum=string(a)*"^{n+"*string(b)*"}"
adatdenom="(n+"*string(c)*")!"
adat="x_n=\\frac{"*adatnum*"}{"*adatdenom*"}"

qnum="x_{n+"*string(d)*"}"
qdenom="x_{n}"
q="\\frac{"*qnum*"}{"*qdenom*"}"

jv=helper(a,b,c,d)
rv1=helper(a,b,c+1,d)
rv2=helper(a,b,c+1,d+1)
rv3=helper(a,b,c,d+1)


qText=replace(raw"""
\begin{multi}{__QNAME}
Ha $ __ADAT $, akkor $ __Q$=?
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
""",[
   "__QNAME",qname,
   "__ADAT",adat,
   "__Q",q,
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3
])

    print(_out,qText)

end
