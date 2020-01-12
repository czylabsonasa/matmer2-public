mquizname="gyakorló"

include("esem.jl") # események
include("val.jl")  # valség tul.
include("felt.jl") # feltételes valség0
include("dvv.jl") # diszkrét
include("eofv.jl") # eloszlás fv.
include("impfvv.jl") # fontos folytonos vv.
include("impdvv.jl") # fontos diszkret vv.


f(x)=1+Int(floor(0.2*length(x)))
mdict=Dict(
  # "esem"=>(0,esem),#-1 mind, 0 semmi, n>0 annyi
  # "val"=>(0,val),
  # "felt"=>(0,felt),
  # "dvv"=>(0,dvv),
  # "eofv"=>(0,eofv),
  # "impfvv"=>(0,impfvv),
  # "impdvv"=>(-1,impdvv),

  "esem"=>(f(esem),esem),#-1 mind, 0 semmi, n>0 annyi
  "val"=>(f(val),val),
  "felt"=>(f(felt),felt),
  "dvv"=>(f(dvv),dvv),
  "eofv"=>(f(eofv),eofv),
  "impfvv"=>(f(impfvv),impfvv),
  "impdvv"=>(f(impdvv),impdvv),



)
