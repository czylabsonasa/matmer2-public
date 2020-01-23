mquizname="gyakorló"

include("esem.jl") # események
include("val.jl")  # valség tul.
include("felt.jl") # feltételes valség0
include("dvv.jl") # diszkrét
include("eofv.jl") # eloszlás fv.
include("impfvv.jl") # fontos folytonos vv.
include("impdvv.jl") # fontos diszkret vv.
include("sfv.jl") # sűrűségfv 
include("flenvv.jl") # függetlenség, kovarianci, korreláció 
include("minta.jl") # minta
include("proba.jl") # u,t 
include("covcorr.jl") # néhány cov/corr tulajdonság 


f(x)=1+Int(floor(0.35*length(x)))
mdict=Dict(
  # "esem"=>(0,esem),#-1 mind, 0 semmi, n>0 annyi
  # "val"=>(0,val),
  # "felt"=>(0,felt),
  # "dvv"=>(0,dvv),
  # "eofv"=>(0,eofv),
  # "impfvv"=>(0,impfvv),
  # "impdvv"=>(0,impdvv),
  # "sfv"=>(0,sfv),
  # "flenvv"=>(-1,flenvv),
  # "minta"=>(-1,minta),
  # "proba"=>(-1,proba),


   "esem"=>(f(esem),esem),#-1 mind, 0 semmi, n>0 annyi
   "val"=>(f(val),val),
   "felt"=>(f(felt),felt),
   "dvv"=>(f(dvv),dvv),
   "eofv"=>(f(eofv),eofv),
   "impfvv"=>(f(impfvv),impfvv),
   "impdvv"=>(f(impdvv),impdvv),
   "sfv"=>(f(sfv),sfv),
   "flenvv"=>(f(flenvv),flenvv),
   "minta"=>(f(minta),minta),
   "proba"=>(f(proba),proba),
   "covcorr"=>(f(covcorr),covcorr),


)
