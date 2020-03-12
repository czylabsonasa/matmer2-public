let
   qname="tKetoldali"
  
   MU=rand(150:10:200)
   SIGMA=rand(3:9) # a mintat normalisbol generalja

   r(x)=round.(x,digits=4)

   N=rand(8:12)

   p=[0.75,0.90,0.95,0.975,0.98,0.99,0.995]
   student=TDist(N-1)
   q=quantile.(student,p)
   table=toTable(p,"p",q,"t_{$(N-1)}(p)")
   

   F=Normal(MU+rand(0:4)-2,SIGMA)
   X=rand(F,N); X=r(X)

   SUM=sum(X); SUM=r(SUM)
   SUM2=sum(X.*X) ; SUM2=r(SUM2)
   MEAN=mean(X)
   S=std(X)
   
   if abs(S-(SUM2-N*MEAN^2)/(N-1))>1e-12
      println("ok")
   else
      println("ballyy")
   end
   
   t=(MEAN-MU)/(S/sqrt(N)) ; t=r(t)
   al=rand([0.10,0.05,0.02,0.01],3)
   c=quantile.(student,1 .-0.5*al); c=r(c)

   jv=""
   if abs(t)<c[1]
      jv=raw"\text{{\it elfogadjuk}, mivel } |t|=__T < __C=t_{__DF}(__P)"
   else
      jv=raw"\text{{\it elvetjük}, mivel } |t|=__T \ge __C=t_{__DF}(__P)"
   end
   jv=replace(jv,[
         "__T",toS(abs(t)),
         "__C",toS(c[1]),
         "__P",toS(1-0.5*al[1]),
         "__DF",toS(N-1)
   ])


qText=replace(raw"""
\szak{Feladat: } Egy zacskós tea-féle névleges (átlagos) tömege a gyártó állítása szerint 
$ __MU $ gramm. A fogyasztóvédelem emberei véletlenszerűen megvizsgáltak  néhány terméket 
( $ X_{1},\ldots,X_{__N}$ ) és a következő eredményeket kapták:
$$
\sum_{k=1}^{ __N } X_{k}= __SUM \hspace{1cm} \sum_{k=1}^{ __N } X^{2}_{k}= __SUM2
$$
A töltőtömeg normalitását feltételezve vizsgálja meg a gyártó állítását
$ \alpha=__ALPHA $ szinten!

\szak{Megoldás: } Normális a sokaság, a (valódi) szórás ismeretlen, a várható értékre
vonatkozó kérdésről akarunk dönteni, ezért $ t $-próbát használunk.
A hipotéziseink:
\begin{gather*}
H_{0}: \mu = __MU\\
H_{1}: \mu \neq __MU\\
\end{gather*}
A próbastatisztika
$$
t=\frac{\overline{X}-__MU}{s}\sqrt{__N} \hspace{0.5cm}\overset{H_{0}}{\sim}\hspace{0.5cm}{t_{__DF}}
$$
Itt $s=\sqrt{\frac{\sum_{k=1}^{ __N } (X_{k}-\overline{X})^2}{__N-1}}$ a korrigált tapasztalati szórás.
Ha $H_{0}$ igaz, akkor $ t $ Student eloszlású $__DF$-szabadsági fokkal.
Számolások:
\begin{gather*}
\overline{X}=\frac{__SUM}{__N}=__MEAN\\
s=\sqrt{\frac{__SUM2 - __N*(__MEAN)^2}{__N-1}}=__S\\
t=\frac{__MEAN-__MU}{__S}\sqrt{__N}=__t \\
\end{gather*}
$\alpha= __ALPHA $-szinten kell elvégezni a próbát, ezért keresünk egy $ C $ számot a
$$
__TABLE
$$
táblázat segítségével, melyre:
\begin{gather*}
P(|t|<C)=1-__ALPHA=__AL1 \Leftrightarrow\\
t_{__DF}(C)=1-\frac{__ALPHA}{2}=__AL2 
\end{gather*}
$\Rightarrow\hspace{0.5cm} C=__C $, ezért $ H_0 $-t $ __ALPHA $-szinten
$$
__jv.
$$
""",[
   "__TABLE",table,
   "__MU",toS(MU),
   "__N",toS(N),
   "__DF",toS(N-1),
   "__SUM2",toS(SUM2),
   "__SUM",toS(SUM),
   "__S",toS(S),
   "__MEAN",toS(MEAN),
   "__ALPHA",toS(al[1]),
   "__AL1",toS(1-al[1]),
   "__AL2",toS(1-al[1]/2),
   "__t",toS(t),
   "__C",toS(c[1]),
   "__jv",jv
])


print(_out,qText)

end
