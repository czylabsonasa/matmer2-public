let
   
   using DelimitedFiles
   A=readdlm(_input,Int)//1

   (n,n)=size(A)
   B=zeros(Int,n,n)
   for i in 1:n
      B[i,i]=1
   end
   B//=1


   println(_out,raw"$$"*toS(A)*toS(B)*raw"$$")

   sing=false
   for i in 1:n
      println(_out,i,". fázis\n")
      if A[i,i]==0
         println(_out,"0 a pivot elem")
         println(_out,"keresünk alatta egy nemnulla elemet\n")
         k=0
         for j=(i+1):n
            if A[j,i]!=0
               k=j
               break
            end
         end
         if k==0
            println(_out,"nincs alatta nemnulla elem ...\n")
            println(_out,"szinguláris mátrix, vége\n")
            break
         end

         println(_out,"a(z) ",k,". sort választom -> sorcsere ")
         A[[i,k],:]=A[[k,i],:]
         B[[i,k],:]=B[[k,i],:]
         d=1-d
      end

      for j=(i+1):n
         if A[j,i]!=0
            println(_out,"levonom a(z) ",i,". sor ",raw"$"*toS(A[j,i]//A[i,i])*raw"$"," -szeresét a(z) ",j,". sorból" )
            l=A[j,i]//A[i,i]
            A[j,:]-=l*A[i,:]
            B[j,:]-=l*B[i,:]
            println(_out,raw"$$"*toS(A)*toS(B)*raw"$$")
         else
            println(_out,"nincs teendő, továbbmegyek\n")
         end
      end
   end

   if sing==false
      println(_out,"visszafelé is eliminálok\n")
      for i=n:-1:2
         volt=false
         for j=(i-1):-1:1
            if A[j,i]==0
               continue
            end
            l=A[j,i]//A[i,i]
            A[j,:]-=l*A[i,:]
            B[j,:]-=l*B[i,:]
            volt=true
         end
         if volt==true
            println(_out,raw"$$"*toS(A)*toS(B)*raw"$$")
         end
      end
      println(_out,"normálok, ha szükséges\n")
      volt=false
      for i=1:n
         l=A[i,i]
         if l!=1
            volt=true
            A[i,:]//=l
            B[i,:]//=l
         end
      end
      if volt==true
         println(_out,raw"$$"*toS(A)*toS(B)*raw"$$")
      end
   end
end