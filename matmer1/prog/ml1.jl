# matlabos kódrész nagyon gáz

let
   qname="ml1"


   x=(rand(1:5,4).-2)//1
   expr=""
   y=copy(x)
   d=copy(x)
   for i in 1:length(x)
      d[i]=i
   end

   pw=raw"\string^"
   p=rand(2:3)
   pw=pw*string(p)

   if rand(0:1)>0
      y=x.^p
      expr=expr*"x."*pw
   else
      y=p*x
      expr=expr*"$(p)*x"
   end
   ch=rand(0:3)
   if ch>1 #+
      if ch>2
         expr=expr*"+(x+(1:length(x)))."*pw
         y=y.+(x+d).^p
      else
         expr=expr*"+(x-(1:length(x)))."*pw
         y=y.+(x-d).^p
      end
   else
      if ch<1
         expr=expr*"-(x-(1:length(x)))."*pw
         y=y.-(x-d).^p
      else
         expr=expr*"-(x+(1:length(x)))."*pw
         y=y.-(x+d).^p
      end
   end


   jv=sM(y)
   rv1=sM(-y)
   rv2=sM(y.+p)
   rv3=sM(p*y)

   qText=raw"""
   \begin{multi}{__QNAME}
   Mi lesz az $y$ vektor az utasítások végrehajtása után? \newline
   $x=__X;$ \newline
   $y=$__EXPR;

   \item* $__JV$
   \item  $__RV1$
   \item  $__RV2$
   \item  $__RV3$
   \end{multi}
   """
   qText=replace(qText,"__QNAME"=>qname)
   qText=replace(qText,"__X"=>sM(x))
   qText=replace(qText,"__EXPR"=>expr)
   qText=replace(qText,"__JV"=>jv)
   qText=replace(qText,"__RV1"=>rv1)
   qText=replace(qText,"__RV2"=>rv2)
   qText=replace(qText,"__RV3"=>rv3)
   print(_out,qText)
end
