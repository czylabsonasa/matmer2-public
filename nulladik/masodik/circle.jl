let
   qname="circle"

   kx=rand(1:7)
   ky=rand(1:7)
   r=rand(3:7)
   if rand(0:1)>1
      kx=-kx
   end
   if rand(0:1)>1
      ky=-ky
   end

   # a ketvaltozos polinomot tablazattal adom meg
   function table(x::Int,y::Int,r::Int)
      xy=zeros(Int,3,3)
      xy[1,1]=-r*r+x*x+y*y
      xy[1,2]=-2*y
      xy[2,1]=-2*x
      xy[3,1]=1
      xy[1,3]=1
      return xy
   end

#   println(table(1,1,10))
   


   function poly(xy::Array{Int,2})
      function tag(a,i,j)
         ret=""
         if a==0
            return ""
         end 
         while 1==1
            if a==1
               if i==0 && j==0 
                  return "+1"
               end
               ret=ret*"+"
               break
            end
            if a==-1
               if i==0 && j==0 
                  return "-1"
               end
               ret=ret*"-"
               break
            end
            if a>0
               ret=ret*"+"
            end
            ret=ret*string(a)

            break
         end

         if i!=0
            ret=ret*"x"
            if i>1
               ret=ret*"^{"*string(i)*"}"
            end
         end
         if j!=0
            ret=ret*"y"
            if j>1
               ret=ret*"^{"*string(j)*"}"
            end
         end
         return ret
      end # tag

      ret=""
      nx,ny=size(xy)
      for xi in 1:nx
         for yi in 1:ny
            ret=ret*tag(xy[xi,yi],xi-1,yi-1)
         end
      end
      return ret
   end

jv=poly(table(kx,ky,r))*"=0"
rv1=poly(table(-kx,ky,r+1))*"=0"
rv2=poly(table(kx,-ky,r-1))*"=0"
rv3=poly(table(-kx,-ky,r))*"=0"


qText=bRep(raw"""
\begin{multi}{__QNAME}
Válassza ki a lentiek közül egy $__K$ középpontú kör egyenletét.
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
""",[
    "__QNAME",qname,
    "__K","K"*toS([kx,ky]//1),
    "__JV",jv,
    "__RV1",rv1,
    "__RV2",rv2,
    "__RV3",rv3
])

    print(_out,qText)

end
