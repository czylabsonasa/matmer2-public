# 3 pontban adott az erteke egy parabolanak, szamold ki egy 4.-ben
function masodfoku()
    
  exname="masodfoku"

  a=rand(setdiff(-3:3,[0]))
  b=rand(setdiff(-3:3,[0]))
  c=rand(setdiff(-3:3,[0]))
  f(t)=a*t^2+b*t+c
  
  t1,t2,t3,t4=sample(-4:4,4,replace=false)
  f1,f2,f3,f4=f.([t1,t2,t3,t4])
  q,fq=t4,f4


  gen(x)="f("*string(x[1])*")="*string(x[2])

  alak=join(gen.(zip([t1,t2,t3],[f1,f2,f3])),", ")
  Q="f("*string(q)*")"

  jv=string(fq)
  rv1=string(fq+1)
  rv2=string(fq+2)
  rv3=string(fq-2)

  body=raw"""
  \begin{multi}{__EXNAME}
  Egy másodfokú $f$ függvényről tudjuk, hogy $__ALAK$. Mennyi $__Q$ ?
  \item* $__JV$
  \item  $__RV1$
  \item  $__RV2$
  \item  $__RV3$
  \end{multi}
  """

  reduce(replace,[
  "__EXNAME"=>exname,
  "__ALAK"=>alak,
  "__Q"=>Q,
  "__JV"=>jv,
  "__RV1"=>rv1,
  "__RV2"=>rv2,
  "__RV3"=>rv3],
  init=body)
end
masodfoku()