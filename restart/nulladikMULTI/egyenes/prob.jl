# ket pontban adott az erteke egy egyenesnek, szamold ki egy harmadikban
exname="egyenes"

a=rand(-4:4); a = a==0 ? a+rand([-1,1]) : a
b=rand(-4:4); b = b==0 ? b+rand([-1,1]) : b
f(t)=a*t+b


x=rand(-10:10) # a megadott helyek
y=x+rand(4:10)
# 3 eset egyforma valséggel: q<a a<q<b b<q 
q=0
ch=rand(1:3)
q = if ch==1
  rand(x-5:x-1)
elseif ch==2
  rand(x+1:y-1)
else
  rand(y+1:y+5)
end

fx,fy,fq=f(x),f(y),f(q)


alak="f("*string(x)*")="*string(fx)*",\\ "*"f("*string(y)*")="*string(fy)
Q="f("*string(q)*")"

jv=string(fq)
rv1=string(fq+1)
rv2=string(fq+2)
rv3=string(fq-2)

body=raw"""
\begin{multi}{__EXNAME}
Egy elsőfokú $f$ függvényről tudjuk, hogy $__ALAK$. Mennyi $__Q$ ?
\item* $__JV$
\item  $__RV1$
\item  $__RV2$
\item  $__RV3$
\end{multi}
"""

body=reduce(replace,[
"__EXNAME"=>exname,
"__ALAK"=>alak,
"__Q"=>Q,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3],
init=body)
