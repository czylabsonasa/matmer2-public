Tfr(a::Int,b::Int)="\\frac{$(a)}{$(b)}"
Tfr(a::String,b::String)="\\frac{"*a*"}{"*b*"}"
Tmm(a)="\$"*string(a)*"\$"
Tzj(a::String)="\\left("*a*"\\right)"

# racionalis latex alakja, hagyomanyos egy /-es jelolessel + 2//1->2 stb.
function toS(r::Rational{Int})
   if 0==numerator(r)
      return "0"
   end
   if 1==denominator(r)
      return string(numerator(r))
   end
   ret=""
   if numerator(r)<0
      ret="-"
      r=-r
   end
   return ret*"\\frac{$(numerator(r))}{$(denominator(r))}"
end

function toS(z::Complex{Rational{Int}})
   ret=""
   rz=toS(real(z))
   iz=toS(imag(z))
   if 0==imag(z)
      return rz
   end
   if 0==real(z)
      return iz*"i"
   end
   if imag(z)<0
      return rz*iz*"i"
   else
      return rz*"+"*iz*"i"
   end
end

h2(z::Complex{Rational{Int}})=real(z)*real(z)+imag(z)*imag(z)
trig(alfa::Rational{Int})="\\cos($(toS(alfa))\\pi)+\\sin($(toS(alfa))\\pi)i"


#vektor
function toS(v::Array{Rational{Int},1};delim::String=", ",brac::Bool=true)
   ret=""
   if brac==true
      ret="\\left["
   end

   for i in 1:length(v)
      if i>1
         ret=ret*delim
      end
      ret=ret*toS(v[i])
   end
   if brac==true
      ret=ret*"\\right]"
   end
   return ret
end

function toS(A::Array{Rational{Int},2};delim::String="",brac::Bool=true)
   r,c=size(A)
   ret="{\\begin{array}{"*repeat('c',c)*"}"
   for i in 1:r
      if i>1
         ret=ret*"\\\\ "
      end
      for j in 1:c
         if j>1
            ret=ret*delim*"& "
         end
         ret=ret*toS(A[i,j])
      end
   end
   ret=ret*"\\end{array}}"
   if brac==true
      ret="\\left["*ret*"\\right]"
   end
   return ret
end



function toS(A::Array{String,2}; delim::String="",brac::Bool=true)
   r,c=size(A)
   ret="{\\begin{array}{"*repeat('c',c)*"}"
   for i in 1:r
      if i>1
         ret=ret*"\\\\ "
      end
      for j in 1:c
         if j>1
            ret=ret*delim*"& "
         end
         ret=ret*A[i,j]
      end
   end
   ret=ret*"\\end{array}}"
   if brac==true
      ret="\\left["*ret*"\\right]"
   end
   return ret
end


function toS(v::Array{String,1}; delim::String="",brac::Bool=true)
   c=length(v)
   ret="{\\begin{array}{"*repeat('c',c)*"}"
   for i in 1:c
      if i>1
            ret=ret*delim*"& "
     end
      ret=ret*v[i]
   end

   if brac==true
      ret="\\left["*ret*"\\right]"
   end
   return ret
end


# bulk replace
function bRep(s::String,h::Array{String,1})
   for i in 1:2:length(h)
      s=replace(s,h[i]=>h[i+1])
   end
   return s
end


function ev(i,n) # egysegvektor
   x=zeros(Int,n)//1
   x[i]=1
   return x
end

# float-ot ad vissza az opnorm...
function mopnorm(A::Array{Rational{Int},2},p::Int)
   if 1==p
      tA=abs.(A)
      return maximum(sum(tA,dims=1))
   end
   if -1==p
      tA=abs.(transpose(A))
      return maximum(sum(tA,dims=1))
   end
   return -1//1

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
