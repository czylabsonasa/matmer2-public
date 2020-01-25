function szamrsz2()
  exname="szamrsz2"

  n=rand(50:200)
  o,jv=sample(2:20,2,replace=false)

  alak=string(n,base=o)*"_{$(o)}\\ \\text{és}\\ "*string(n,base=jv)*"_{d}"


  rv1,rv2,rv3=sample(setdiff(2:20,[o,jv]),3,replace=false)
  jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])




  body=raw"""
  \begin{multi}{__EXNAME}
  Egy szám alakja $__O$ és $d$ alapú rendszerben: $__ALAK$. Ekkor $d=$

  \item* $ __JV  $
  \item  $ __RV1 $
  \item  $ __RV2 $
  \item  $ __RV3 $
  \end{multi}
  """

  reduce(replace,
  [
  "__EXNAME"=>exname,
  "__O"=>o,
  "__ALAK"=>alak,
  "__JV"=>jv,
  "__RV1"=>rv1,
  "__RV2"=>rv2,
  "__RV3"=>rv3
  ],
  init=body)
end
szamrsz2()

