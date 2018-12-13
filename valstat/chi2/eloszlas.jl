let
   qname="chieo"

   N=100
   X=rand(N)
   C=zeros(Int,4)
   for x in X
      i=Int(1+floor(4*x))
      C[i]+=1
   end

   elso=[raw"\text{osztályok}",raw"$[0,0.25)$",raw"[0.25,0.5)",raw"[0.5,0.75)",raw"[0.75,1)"]
   masodik=[raw"\text{gyakoriságok}",toS(C[1]), toS(C[2]), toS(C[3]), toS(C[4])]
   table=permutedims(hcat(elso,masodik),(2,1))
   table=toTable(table)

   p=[0.75,0.90,0.95,0.975,0.98,0.99,0.995]
   student=Chi2Dist(N-1)
   q=quantile.(student,p)
   Qtable=toTable(p,"p",q,"t_{$(N-1)}(p)")



   jv=toS(0)
   rv1=toS(1//2)
   rv2=toS(-1//3)
   rv3=toS(1//4)

   qText=replace(raw"""
   \begin{multi}{__QNAME}
   Józsi kitalált egy új véletlenszám-generátort mely $[0,1)$-beli számokat ad. Le akar tesztelni,
   hogy a számok elég egyenletesen oszlanak-e el. Egy $ 100 $ elemű $ X $ mintát vesz,
   a kapott számokat nagyság szerint $ 4 $ csoportra osztja:
   $$
      __TABLE
   $$
   Egy alkalmas próba segítségével $$
   \item* $ __JV $
   \item $ __RV1 $
   \item $ __RV2 $
   \item $ __RV3 $
   \end{multi}
   """,[
      "__QNAME",qname,
      "__TABLE",table,
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])

      print(_out,qText)


end
