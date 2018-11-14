using StatsBase
include("_include/common.jl")
# include("config.jl")


_out=open("_output/out.tex","w")
include("_include/pre.jl")

print(_out, raw"""
\begin{quiz}{gyakorló feladatok}
""")


v=split(ARGS[1],'/')
_target=v[1]
_sel=v[2]

#include(_target*"/"*_sel*".jl")
include(_target*"/"*_sel)



for (_key,_val) in _db
   _smp=[] # tha sample
   if typeof(_val[1])==Int
      if _val[1]>0 # w/o replace
         _smp=sample(2:length(_val),_val[1],replace=false)
      else
         _smp=sample(2:length(_val),-_val[1],replace=true)
      end
   else
      _smp=1:length(_val)
   end
   for s in _smp
      _q=_target*"/"*_key*"/"*_val[s]*".jl"
      println(_q) #informacio futas kozben
      include(_q)
   end
end

include("_include/post.jl")
close(_out)

# shell
run(`pdflatex -output-directory _output/ out.tex`)
