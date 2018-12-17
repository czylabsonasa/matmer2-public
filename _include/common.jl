using StatsBase
using LinearAlgebra
using Statistics
using Distributions
using Random
using DelimitedFiles
using Printf


include("../_include/toS.jl")
include("../_include/poly.jl")


Tfr(a::Int,b::Int)="\\frac{$(a)}{$(b)}"
Tfr(a::String,b::String)="\\frac{"*a*"}{"*b*"}"
Tmm(a)="\$"*string(a)*"\$"
Tzj(a::String)="\\left("*a*"\\right)"


h2(z::Complex{Rational{Int}})=real(z)*real(z)+imag(z)*imag(z)
trig(alfa::Rational{Int})="\\cos($(toS(alfa))\\pi)+\\sin($(toS(alfa))\\pi)i"


# bulk replace
import Base.replace
function replace(s::String,h::Array{String,1})
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
