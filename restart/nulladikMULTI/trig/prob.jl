exname="trig"

# function trig1()
#   while true
#     p=rand(-10:10)
#     q=rand(-10:10)
#     ((p+q)!=0)&&(p*q!=0)&&(p!=q)&&(return (p,q))
#   end
#   0,0
# end
# p,q=trig1()
#println(stderr,p,q)
p,q=let
  p,q=0,0
  while true
    p=rand(-10:10)
    q=rand(-10:10)
    ((p+q)!=0)&&(p*q!=0)&&(p!=q)&&break
  end
  (p,q)
end


x=q^2-p^2
y=2*p*q
z=q^2+p^2


s=x//z
c=y//z


jv=[2s*c,c^2-s^2]
rv1=[s*c,c^2-s^2]
rv2=[s*c,2*(c^2-s^2)]
rv3=[4s*c,2*(c^2-s^2)]

jv,rv1,rv2,rv3=tstring.([jv,rv1,rv2,rv3],brac=false)
s,c=tstring.([s,c])

body=raw"""
\begin{multi}{__EXNAME}
Tudjuk, hogy $ \sin(\alpha) =__S$ és $ \cos(\alpha) = __C $. 
Ekkor $$ \sin(2\alpha),\ \cos(2\alpha)=$$
\item* $ __JV $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__S"=>s,
"__C"=>c,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)
