exname="parity"

paros=[
  raw"\cos(x)",
  raw"2\cos(3x)",
  raw"-\cos(-7x)",
  raw"|x|",
  raw"|x+2|+|x-2|",
  raw"e^{x^2}",
  raw"e^{x}+e^{-x}",
  raw"\log(|x|+1)",
  raw"-\cos(x+\pi)",
  raw"\cos(x-\pi)"
]


paratlan=[
  raw"\sin(x)",
  raw"2\sin(3x)",
  raw"-3\sin(-2x)",
  raw"x",
  raw"-6x",
  raw"|x+2|-|x-2|",
  raw"e^{x}-e^{-x}",
  raw"-\sin(x+\pi)",
  raw"\sin(x-\pi)"
]



npar=rand(1:5)
nplan=8-npar
sel=[sample(paros,npar,replace=false);sample(paratlan,nplan,replace=false)]|>shuffle
sel=reshape(sel,2,4)

jv=npar
rv1,rv2,rv3=sample(setdiff(0:8,[npar]),3,replace=false)

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

jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])
sel=tstring(sel,brac=false)

body=raw"""
\begin{multi}{__EXNAME}
$$ __SEL $$
A fentiek közül a páros függvények száma:
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""


body=reduce(replace,
[
  "__EXNAME"=>exname,
   "__SEL"=>sel,
   "__JV"=>jv,
   "__RV1"=>rv1,
   "__RV2"=>rv2,
   "__RV3"=>rv3
],
init=body)

