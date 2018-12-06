let
   qname="botMinEo"

   h=2+rand(2:2:10) # a bot hossza
   # komplementert érdemes vizsgálni
   # Y=min(X,h-X)>x
   # X>x h-X>x -->
   # x < X < h - x
   # Y ~ U(0,h/2)
   # max hasonloan

   h2=Int(floor(h/2))
   h//=1
   h2//=1

   jv=replace(raw"$F(x)=\frac{x-__H2}{__H2},\:\: __H2<x<__H$",
      ["__H2",toS(h2),"__H",toS(h)]
   )
   rv1=replace(raw"$F(x)=\frac{x-__H}{__H2},\:\: __H2<x<__H$",
      ["__H2",toS(h2),"__H",toS(h)]
   )
   rv2=replace(raw"$F(x)=\frac{x-__H2}{__H},\:\: 0<x<__H$",
      ["__H2",toS(h2),"__H",toS(h)]
   )
   rv3=replace(raw"$F(x)=\frac{x-__H}{__H},\:\: 0<x<__H$",
      ["__H2",toS(h2),"__H",toS(h)]
   )

qText=replace(raw"""
\begin{multi}{__QNAME}
Egy $ __H $ méter hosszú botot  egy csapással véletlenszerűen kettétörünk.
Legyen $ Y $ a keletkezett részek hosszának maximuma.
Ekkor az $Y$ eloszlásfüggvénye: (ami a jelzett intervallumtól jobbra 1,
balra pedig 0 értéket vesz fel)
\item* $__JV$
\item $__RV1$
\item $__RV2$
\item $__RV3$
\end{multi}
""",[
   "__QNAME",qname,
   "__H",toS(h),
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3
])

   print(_out,qText)

end
