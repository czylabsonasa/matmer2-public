# horner
function horner(p)
   function f(x)
      px=p[1]
      d=length(p)
      for i=2:d
         px=px*x+p[i]
      end
      px       
   end
end

function polyDer(pol)
   n=length(pol)
   dpol=[];
   if n==1
      dpol=[0]
   else
      dpol=pol[1:n-1].*(n-1:-1:1)
   end
   dpol
end



# veletlen ketvaltozos polinom
# latex alak + ertek a megadott helyen
function ranPoly(x::Int, y::Int)
   tagok=rand(3:4)
   alak=""
   ertek=0
   for tag in 1:tagok
      eh=rand(1:4)
      if rand(0:1)>0
         eh=-eh
      end
      xh=rand(0:2)
      yh=rand(0:2)
      ertek=ertek+eh*x^xh*y^yh
      akt=string(eh)
      if eh>0
         akt="+"*akt
      end
      if xh>0
         if xh>1
            akt=akt*"x^$(xh)"
         else
            akt=akt*"x"
         end
      end
      if yh>0
         if yh>1
            akt=akt*"y^$(yh)"
         else
            akt=akt*"y"
         end
      end
      alak=alak*akt
   end
   if '+'==alak[1]
      alak=alak[2:end]
   end

   return ertek,alak
end

function polyToS(p::Array{Rational{Int},1};x="x")
   deg=length(p)-1
   alak=""
   for pw in 0:deg
      eh=p[pw+1]
      if eh!=0
         if eh>0
            alak*="+"
            if eh!=1
               alak*=toS(eh)
            end
         end
         if eh<0
            alak*="-"
            if eh!=-1
               alak*=toS(abs(eh))
            end
         end
         if pw>0
            alak*=x
            if pw>1
               alak*=x*"^$(pw)"
            end
         end
      end
   end
   if '+'==alak[1]
      alak=alak[2:end]
   end

   alak
end
