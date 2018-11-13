let
   qname="norm1"
   #n=rand(4:5)
   n=4
   A=rand(-20:20,n,n)//1
   mx,idx=findmax(sum(abs.(A),dims=1))

   i=idx[2]
   
   jv=toS(mx)*", "*toS(ev(i,n))*"^{T}"
   i=mod(i,n)+1
   rv1=toS(mx+1)*", "*toS(ev(i,n))*"^{T}"
   i=mod(i,n)+1
   rv2=toS(mx+2)*", "*toS(ev(i,n))*"^{T}"
   i=mod(i,n)+1
   rv3=toS(abs(mx-1))*", "*toS(ev(i,n))*"^{T}"
   qText=bRep(
      raw"""
      \begin{multi}{__QNAME}
      Az $A=__A$ mátrix 1-normája és egy $x$ vektor melyre $\frac{||Ax||}{||x||}$ maximális: 
      \item* $__JV$
      \item $__RV1$
      \item $__RV2$
      \item $__RV3$
      \end{multi}
      """, [
         "__QNAME",qname,
         "__A",toS(A),
         "__JV",jv,
         "__RV1",rv1,
         "__RV2",rv2,
         "__RV3",rv3])

    print(_out,qText)

end
