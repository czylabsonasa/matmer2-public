exname="lepcso"

n=rand(6:13)
fib=let
  fib=fill(0,n+3)
  fib[1],fib[2]=1,2
  for i=3:n+3
    fib[i]=fib[i-1]+fib[i-2]
  end
  fib
end


jv=fib[n]



rv1,rv2,rv3=sample(setdiff(fib[n-3:n+3],[jv]),3,replace=false)
jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])
n=string(n)

body=mreplace(
raw"""
\begin{multi}{__EXNAME}
Egy $__N$ lépcsőfokból álló lépcső legfelső fokára akarunk feljutni, 
úgy hogy egyszerre $1$ vagy $2$ fokot lépünk. Hányféleképpen tehetjük meg?

\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""
,
[
  "__EXNAME"=>exname,
  "__N"=>n,
  "__JV"=>jv,
   "__RV1"=>rv1,
   "__RV2"=>rv2,
   "__RV3"=>rv3
])


