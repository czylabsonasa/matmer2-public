function mertani()
  exname="mertani"

  m=rand(1:10)
  j=rand(1:4)
  q=m+j
  n=q+j
  am=rand(2:30)
  an=rand(2:30)



  jv="\\sqrt{$(tstring(am*an//1))}"
  rv1="\\sqrt{$(tstring(am//an))}"
  rv2="\\sqrt{$(tstring(am//1+an))}"
  rv3=tstring(am//an)

  m,n,am,an,q=string.([m,n,am,an,q])

  body=raw"""
  \begin{multi}{__EXNAME}
  Egy mértani sorozatról tudjuk, hogy $a_{__m}=__am$ és $a_{__n}=__an$. Ekkor 
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
mertani()