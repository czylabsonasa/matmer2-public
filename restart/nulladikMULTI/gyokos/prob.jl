# Gyapjas-Reiman: elemimat I 40,42 alapján


exname="gyokos"

a=rand(2:9)
c=rand(1:a-1)
b=a^2-c^2
s=2(a-c)
jv,rv1,rv2,rv3="","","",""
gys=Int(floor(sqrt(s)))
if gys^2==s
  jv=string(gys)
  rv1,rv2,rv3=string.(sample(setdiff(1:gys+4,[gys]),3,replace=false))
else
  jv="\\sqrt{$(s)}"
  rv1,rv2,rv3="\\sqrt{".*string.(sample(setdiff(1:s+4,[s]),3,replace=false)).*"}"
end


body=mreplace(
raw"""
\begin{multi}{__EXNAME}
$$
\sqrt{__A+\sqrt{__B}}-\sqrt{__A-\sqrt{__B}}=
$$
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""
,
[
  "__EXNAME"=>exname,
  "__A"=>a,
  "__B"=>b,
  "__JV"=>jv,
   "__RV1"=>rv1,
   "__RV2"=>rv2,
   "__RV3"=>rv3
])


