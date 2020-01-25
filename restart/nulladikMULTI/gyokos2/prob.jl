# Gyapjas-Reiman: elemimat I 40,42 alapján

function gyokos2()
  exname="gyokos2"

  a,b,c,d=sample(3:30,4,replace=false)
  genstr(x)="2\\sqrt{\\frac{$(x)}{$(x-1)}}"
  jv,rv1,rv2,rv3=genstr.([a,b,c,d])

  mreplace( #ez a retval
  raw"""
  \begin{multi}{__EXNAME}
  $$
  \sqrt{\frac{__A+\sqrt{__A}}{__A-\sqrt{__A}}} + \sqrt{\frac{__A-\sqrt{__A}}{__A+\sqrt{__A}}}=
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
    "__JV"=>jv,
    "__RV1"=>rv1,
    "__RV2"=>rv2,
    "__RV3"=>rv3
  ])
end

gyokos2()

