using StatsBase, Random, Distributions

# reduce-szal megoldva inline (mreplace)
# bulk replace
# import Base.replace
# function replace(s::String,d::Dict{String,String})
#    for (k,dk) in dmrep
#       s=replace(s,k=>dk)
#    end
#    return s
# end
mreplace(s,arr)=reduce(replace,arr,init=s)


tstring(r::Int)=string(r)
tstring(r::Float64)=string(round(r; digits=4))



# racionalis tex-alakja
function tstring(r::Rational{Int})
  if 0==r.num
     return "0"
  end
  if 1==r.den
     return string(r.num)
  end
  ret=""
  if r.num<0
     ret="-"
     r=-r
  end
  return ret*"\\frac{$(r.num)}{$(r.den)}"
end

# racionalis vektor tex alakja
function tstring(v::Array{Rational{Int},1};delim::String=", ",brac::Bool=true)
  ret=""
  if brac==true
     ret="\\left["
  end

  for i in 1:length(v)
     if i>1
        ret=ret*delim
     end
     ret=ret*tstring(v[i])
  end
  if brac==true
     ret=ret*"\\right]"
  end
  return ret
end

# ketdim string matrix -> tex matrix
function tstring(A::Array{String,2}; delim::String="",brac::Bool=true)
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

# ketdim string matrix -> tex matrix
function tstring(A::Array{String}; delim::String="",brac::Bool=true)
  c=length(A)
  ret="{\\begin{array}{"*repeat('c',c)*"}"
  for j in 1:c
    if j>1
        ret=ret*delim*"& "
    end
    ret=ret*A[j]
  end
  ret=ret*"\\end{array}}"
  if brac==true
     ret="\\left["*ret*"\\right]"
  end
  return ret
end



function tstring(p::Dict{Tuple{Int,Int},Rational{Int}})
  alak=""
  for (k,coeff) in p
    alak*= coeff>0 ? "+" : "-"
    if abs(coeff)!=1//1
      alak*=tstring(abs(coeff))
    else
      if k[1]+k[2]==0
        alak*="1"
      end
    end
    if k[1]>0 alak*="x" end
    if k[1]>1 alak*="^{$(k[1])}" end
    if k[2]>0 alak*="y" end
    if k[2]>1 alak*="^{$(k[2])}" end
  end
  alak[1]=='+' ? alak[2:end] : alak
end


function ttable(A::Array{String,2})
  r,c=size(A)
  ret=raw"{\begin{array}{l|"*repeat("|c",c-1)*"}"
  for i in 1:r
     for j in 1:c
        if j>1
           ret=ret*"& "
        end
        ret*=A[i,j]
     end
     ret*=raw"\\ "
     if i<r
        ret*=raw"\hline "
     end
  end
  ret=ret*raw"\end{array}}"

  ret
end

function ttable(x::Array{T,1},sx::String,y::Array{S,1},sy::String) where {T,S}
  n=length(x)
  ret=raw"\begin{array}{l ||"*repeat("c|",n-1)*"c}"
  ret=ret*sx*"&"
  for i in 1:n
     if i>1
        ret=ret*"&"
     end
     ret=ret*tstring(x[i])
  end
  ret=ret*raw"\\ \hline "
  ret=ret*sy*"&"
  for i in 1:n
     if i>1
        ret=ret*"&"
     end
     ret=ret*tstring(y[i])
  end
  ret=ret*raw" \\ "
  ret=ret*raw"\end{array}"
end



# ketvaltozos polinom: generalas, kiertekeles, tex-alak
function ranPoly(xh,yh,pz=0.1)  #xh,yh max kitevok, pz:kihagyas valsege
  poli=Dict{Tuple{Int,Int},Rational{Int}}()
  for x=0:xh,y=0:yh
    (rand()<pz)&&continue
    eh=rand(-3:3)//rand(1:5)
    (eh==0)&&continue
    poli[(x,y)]=eh
  end
  poli
end
function evalPoly(p::Dict{Tuple{Int,Int},Rational{Int}},x,y)
  ret=0//1
  for (k,v) in p
    ret+=v*x^k[1]*y^k[2]
  end
  ret
end
