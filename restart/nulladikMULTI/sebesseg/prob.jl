exname="sebesseg"

s=rand(500:1000)
v2=rand(20:50)
v1=v2+rand(5:20)
tell=s//(v1+v2)
tegy=s//(v1-v2)

jv=[v1,v2]
rv1=[v1+1,v2]
rv2=[v1,v2+rand(1:3)]
rv3=[v1-rand(1:3),v2]

tegy,tell=tstring.([tegy,tell])

jv,rv1,rv2,rv3=join.([jv,rv1,rv2,rv3],", ")



body=raw"""
\begin{multi}{__EXNAME}
Egy $__S$ méter hosszú köralakú pályán két versenyautó gyakorol. Ha egy irányban 
indulnak a rajtvonaltól, akkor $__TEGY$ másodpercenként, ha ellenkező irányban, akkor 
$__TELL$ másodpercenként találkoznak. Mekkora a sebességük ($\frac{m}{s}$)?
\item* $ __JV  $
\item  $ __RV1 $
\item  $ __RV2 $
\item  $ __RV3 $
\end{multi}
"""

body=reduce(replace,
[
"__EXNAME"=>exname,
"__S"=>s,
"__TELL"=>tell,
"__TEGY"=>tegy,
"__JV"=>jv,
"__RV1"=>rv1,
"__RV2"=>rv2,
"__RV3"=>rv3
],
init=body)


