function buszunif()

   exname="buszunif"
   h=rand(5:7)
   mA=rand(0:5:15)
   mB=rand(mA+5:5:mA+25)
   d=mB-mA
   mC=rand(mA+1:mA+d÷2)
   mD=(mB-mC)÷2

   jv=(mD-mC)//(mB-mC)

   A="$(h):$(mA)"
   B="$(h):$(mB)"
   C="$(h):$(mC)"
   D="$(mD)"

   rv1=jv//2
   rv2=(mD-mC)//(mB-mA)
   rv3=rv2//2

   jv,rv1,rv2,rv3=tstring.([jv,rv1,rv2,rv3])

   mreplace(
   raw"""
   \begin{multi}{__EXNAME}
   A tapasztalatok szerint egy busz a megállóba $__A$ és $__B$ között egyenletes eloszlás szerint 
   szokott megérkezni. Ha $__C$-kor érkezem a megállóba (és még nem ment el a busz) mennyi az esélye, hogy 
   $__D$ percnél kevesebbet kell várnom a megérkezéséig?
      \item* $ __JV $
   \item $ __RV1 $
   \item $ __RV2 $
   \item $ __RV3 $
   \end{multi}
   """,
   [
      "__EXNAME"=>exname,
      "__A"=>A,
      "__B"=>B,
      "__C"=>C,
      "__D"=>D,
      "__JV"=>jv,
      "__RV1"=>rv1,
      "__RV2"=>rv2,
      "__RV3"=>rv3
   ])
end
buszunif()