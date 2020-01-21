using StatsBase, Random
# bulk replace
# import Base.replace
# function replace(s::String,d::Dict{String,String})
#    for (k,dk) in d
#       s=replace(s,k=>dk)
#    end
#    return s
# end

function wrap(s)
  include(s)
end

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
