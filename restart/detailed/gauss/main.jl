include("../include/lib.jl")
include("../include/tex.jl")

using DelimitedFiles

_input=ARGS[1]
_inp=open(_input,"r")
A=readdlm(_inp,Int)//1
close(_inp)


# println(_input," ",_output)
# exit(0)

_output=ARGS[2]
_out=open(_output*".tex","w")
println(_out,docpre0)


(r,c)=size(A)

println(_out,raw"$$"*tstring(tstring.(A))*raw"$$")

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
         println(_out,"levonom a(z) ",i,". sor ",raw"$"*tstring(A[j,i]//A[i,i])*raw"$"," -szeresét a(z) ",j,". sorból" )
         A[j,:]-=A[j,i]//A[i,i]*A[i,:]
         println(_out,raw"$$"*tstring(tstring.(A))*raw"$$")
      else
         println(_out,"nincs teendő, továbbmegyek")
      end
   end
end

println(_out,docpost)
close(_out)