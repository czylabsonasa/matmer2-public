# http://fizika.mechatronika.hu/matek/szoveges/5_iqlist.pdf
exname="zongora"

l,z,e=let
  l,z,e=0,0,0
  while true
    l=rand(10:100)
    # l=5z+2n=5z+2(e-z)=3z+2e e>=z
    ns,ee=0,1
    while 2ee<l && ns<2
      zz,r=divrem(l-2ee,3)
      if r==0 && ee>=zz && 2zz>=ee 
        ns+=1
        e,z=ee,zz
      end
      ee+=1
    end
    (1==ns)&&break
  end
  (l,z,e)
end


jv=(e-z)
pool=setdiff(0:jv+5,[jv])
rv1,rv2,rv3=sample(pool,3,replace=false)

jv,rv1,rv2,rv3=string.([jv,rv1,rv2,rv3])


body=raw"""
\begin{multi}{__EXNAME}
Egy koncertteremben van néhány (háromláb)zongora van. A zongoráknál 
$1$ vagy $2$ zongorista ül. A zongoráknak és a zongoristáknak összesen $__L$ 
lába van. Hány zongoránál játszanak négykezest?
\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__L"=>l,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


