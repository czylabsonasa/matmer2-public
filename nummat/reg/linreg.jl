let
   qname="linreg"

   using LinearAlgebra
   m=rand(5:7)
   t=rand(-4:4,m)//1
   f=rand(-3:3,m)//1
   fun1(x)=1//1
   fun2(x)=x//1
   fun=[fun1,fun2]

   A=hcat(fun[1].(t),fun[2].(t))
   At=transpose(A)
   EH=At*A #egyutthato matrix
   JO=At*f #jobb-oldal

   b=EH\JO

   function toTbl(x::Array{Rational{Int},1},sx::String,y::Array{Rational{Int},1},sy::String)
      n=length(x)
      ret=raw"\begin{array}{l ||"*repeat("c|",n-1)*"c}"
      ret=ret*sx*"&"
      for i in 1:n
         if i>1
            ret=ret*"&"
         end
         ret=ret*toS(x[i])
      end
      ret=ret*raw"\\ \hline "
      ret=ret*sy*"&"
      for i in 1:n
         if i>1
            ret=ret*"&"
         end
         ret=ret*toS(y[i])
      end
      ret=ret*raw" \\ "
      ret=ret*raw"\end{array}"
   end

   jv=polyS(b,x="t")
   b[1]*=(-1);
   rv1=polyS(b,x="t")   
   b[2]*=(-1);
   rv2=polyS(b,x="t")
   b[1]*=(-1);
   rv3=polyS(b,x="t")

   qText=bRep(
      raw"""
      \begin{multi}{__QNAME}
      $ __TBL $
      \item* $__JV$
      \item $__RV1$
      \item $__RV2$
      \item $__RV3$
      \end{multi}
      """, [
         "__QNAME",qname,
         "__TBL",toTbl(t,"t",f,"f"),
         "__JV",jv,
         "__RV1",rv1,
         "__RV2",rv2,
         "__RV3",rv3])

    print(_out,qText)

end
