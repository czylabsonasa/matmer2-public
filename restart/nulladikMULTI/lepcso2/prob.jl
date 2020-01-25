function lepcso2()
    
  exname="lepcso2"

  n=rand(6:13)
  dp=let
    dp=fill(0,n+4)
    dp[1:3]=[1,2,4]
    for i=4:n+4
      dp[i]=dp[i-1]+dp[i-2]+dp[i-3]
    end
    dp
  end


  jv=dp[n]



  rv1,rv2,rv3=sample(setdiff(dp[n-4:n+4],[jv]),3,replace=false)
  jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])
  n=string(n)

  mreplace(
  raw"""
  \begin{multi}{__EXNAME}
  Egy $__N$ lépcsőfokból álló lépcső legfelső fokára akarunk feljutni, 
  úgy hogy egyszerre $1,2$ vagy $3$ fokot lépünk. Hányféleképpen tehetjük meg?

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
end

lepcso2()

