using DelimitedFiles
A=readdlm(_input,Int)//1

(r,c)=size(A)

println(_out,raw"$$"*toS(A)*raw"$$")

for i in 1:(r-1)  
   println(_out,i,". fázis\n")
   if A[i,i]==0
      println(_out,"0 a pivot elem")
      println(_out,"keresünk alatta egy nemnulla elemet\n")
      k=0
      for j=(i+1):r
         if A[j,i]!=0
            k=j
            break
         end
      end
      if k==0
         println(_out,"nincs alatta nemnulla elem ... következő fázis")
         continue
      end

      println(_out,"a(z) ",k,". sort választom -> sorcsere ")
      A[[i,k],:]=A[[k,i],:]
      d=1-d
   end

   for j=(i+1):r
      if A[j,i]!=0
         println(_out,"levonom a(z) ",i,". sor ",raw"$"*toS(A[j,i]//A[i,i])*raw"$"," -szeresét a(z) ",j,". sorból" )
         A[j,:]-=A[j,i]//A[i,i]*A[i,:]
         println(_out,raw"$$"*toS(A)*raw"$$")
      else
         println(_out,"nincs teendő, továbbmegyek")
      end
   end
end
