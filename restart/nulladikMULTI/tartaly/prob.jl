exname="tartaly"


tartaly1(y)=(x=rand(1:3);x=x//rand(x+1:x+5))
tartaly2(y)=rand(50:10:200)

# p1,p2,p3=tartaly1.([1,1,1])
# l1,l2,l3=tartaly2.([1,1,1])
# m=rand(300:50:1000) # néha negatív lesz a jv!!!!
# jv=(((m-l3)//(1-p3)-l2)//(1-p2)-l1)//(1-p1)

p1,p2,p3,l1,l2,l3,m,jv=
let
  p1,p2,p3,l1,l2,l3,m,jv=fill(0,8)
  while true
    p1,p2,p3=tartaly1.([1,1,1])
    l1,l2,l3=tartaly2.([1,1,1])
    m=rand(300:50:1000)
    jv=(((m-l3)//(1-p3)-l2)//(1-p2)-l1)//(1-p1)
    (jv>0)&&break
  end
  (p1,p2,p3,l1,l2,l3,m,jv)
end

pool=setdiff(max(1,jv.num-10):jv.num+10,[jv.num])
rv1,rv2,rv3=sample(pool,3,replace=false)//jv.den

p1,p2,p3,l1,l2,l3,jv,rv1,rv2,rv3,m=tstring.([p1,p2,p3,l1,l2,l3,jv,rv1,rv2,rv3,m]//1)


body=raw"""
\begin{multi}{__EXNAME}
Egy tartályból első nap elfogyott a benne lévő víz $__P1$-része, a nap végén $__L1$ litert töltöttünk bele.
Második nap elfogyott a benne lévő víz $__P2$-része, a nap végén $__L2$ litert töltöttünk bele.
Harmadnap elfogyott a benne lévő víz $__P3$-része, a nap végén $__L3$ litert töltöttünk bele.
Ezután $__M$ liter víz volt benne. Mennyi volt eredetileg?

\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__M"=>m,
"__P1"=>p1,
"__P2"=>p2,
"__P3"=>p3,
"__L1"=>l1,
"__L2"=>l2,
"__L3"=>l3,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


