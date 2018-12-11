# befejezetlen!!
let
   qname="gaussParam"


   A=(rand(-3:4,3,5))//1
   aA=abs.(A)
   for i=1:3
      A[i,i]=sum(aA[i,:])-aA[i,i]+1
      A[i,i]*=rand([-1,1])
   end
   b=rand(-3:4,3,1)
   Ab=hcat(A,b)

   function gaussElim(A)
      (r,c)=size(A)
      for i in 1:(r-1)  
         if A[i,i]==0
            k=0
            for j=(i+1):r
               if A[j,i]!=0
                  k=j
                  break
               end
            end
            if k==0
               continue
            end
            A[[i,k],:]=A[[k,i],:]
         end

         for j=(i+1):r
            if A[j,i]!=0
               A[j,:]-=A[j,i]//A[i,i]*A[i,:]
            end
         end
      end
      A
   end # gaussElim

   jv=toS(A)
   rv1=toS("")
   rv2=toS("")
   rv3=toS("")

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Az $ __Ab $ kibővített mátrixú egyenletrendszer megoldása:
   \item* $ __JV  $
   \item  $ __RV1 $
   \item  $ __RV2 $
   \item  $ __RV3 $
   \end{multi}
   """,
   [
   "__QNAME",qname,
   "__Ab",toS(Ab),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3 ]
   )
   print(_out,qText)
end
