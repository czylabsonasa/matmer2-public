function szamtani2()
  exname="szamtani2"

  m=rand(1:10)
  n=m+rand(4:10)
  am=rand(1:100)
  an=rand(1:100)
  d=(an-am)//(n-m)
  q=rand(setdiff(1:25,[m,n]))
  aq=am+(q-m)*d

  jv=aq
  rv1=jv+d
  rv2=jv-d
  rv3=jv+2d

  jv,rv1,rv2,rv3=tstring.([jv,rv1,rv2,rv3])
  m,n,am,an=string.([m,n,am,an])

  body=raw"""
  \begin{multi}{__EXNAME}
  Egy számtani sorozatról tudjuk, hogy $a_{__m}=__am$ és $a_{__n}=__an$. Ekkor 
  $a_{__q}=$
  \item* $__JV$
  \item  $__RV1$
  \item  $__RV2$
  \item  $__RV3$
  \end{multi}
  """

  reduce(replace,[
  "__EXNAME"=>exname,
  "__am"=>am,
  "__an"=>an,
  "__q"=>q,
  "__m"=>m,
  "__n"=>n,
  "__JV"=>jv,
  "__RV1"=>rv1,
  "__RV2"=>rv2,
  "__RV3"=>rv3],
  init=body)
end
szamtani2()