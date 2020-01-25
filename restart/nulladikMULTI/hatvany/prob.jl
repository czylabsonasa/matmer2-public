# csak egész számok a kitevők
function hatvany()
  exname="hatvany"

  a=rand(["a","b","c","x","y"])
  function egy(d=0)
    if d==0
      k=rand([-5,-4,-3,-2,2,3,4,5])
      return a*"^{"*string(k)*"}",k
    end
    k=rand([-5,-4,-3,-2,2,3,4,5])
    R,K=egy(0)
    return "("*R*")^{"*string(k)*"}",k*K
  end
  
  function sok()
    ret,retk="",0
    for i in 1:rand(2:4)
      t,tk=egy(rand([0,1]))
      ret*=t
      retk+=tk
    end
    ret,retk
  end
  num,numk=sok()
  den,denk=sok()
  alak="\\frac{$(num)}{$(den)}"
  jv=numk-denk
  rv1,rv2,rv3=sample(setdiff(jv-5:jv+5,[jv]),3,replace=false)
  jv,rv1,rv2,rv3=a*"^{".*string.([jv,rv1,rv2,rv3]).*"}"


  body=raw"""
  \begin{multi}{__EXNAME}
  $__ALAK=$

  \item* $ __JV  $
  \item  $ __RV1 $
  \item  $ __RV2 $
  \item  $ __RV3 $
  \end{multi}
  """

  reduce(replace,
  [
  "__EXNAME"=>exname,
  "__ALAK"=>alak,
  "__JV"=>jv,
  "__RV1"=>rv1,
  "__RV2"=>rv2,
  "__RV3"=>rv3
  ],
  init=body)
end
hatvany()

