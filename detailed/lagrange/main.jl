# LAGRANGE megkezdve
let
   
   function padIt(v::Array{String,1},pre::Int,post::Int)
      n=length(v)
      ret=fill("",pre+2*n-1+post)
      r=pre+1
      for i in 1:n
         ret[r]=v[i]
         r+=2         
      end
      ret
   end

   function toTable(A::Array{String,2})# ambi
      r,c=size(A)
      ret=raw"{\begin{array}{"*repeat("c",c)*"}"
      for i in 1:r
         for j in 1:c
            if j>1
               ret=ret*" & "
            end
            ret*=A[i,j]
         end
         ret*=raw" \\ "
      end
      ret=ret*raw"\end{array}}"
      ret
   end

   nA=[[1,1,1],[2,2],[3]]
   
   pA=[["1","1","1"],["2","2"],["3"]]
   A=padIt(pA[1],0,0)
   n=3
   for i in 2:n
      A=hcat(A,padIt(pA[i],i-1,i-1))
   end

   A=permutedims(A,(2,1))



   feladat=raw"""
   $$
   __A
   $$
   """
   feladat=replace(feladat,[
      "__A",toTable(A)
   ])


   print(_out,feladat)

end