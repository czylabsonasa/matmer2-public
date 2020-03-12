let
   qname="uJobboldali"

   MU=rand(150:10:200)
   SIGMA=rand(1:5)

   r(x)=round.(x,digits=4)

   p=[0.75,0.90,0.95,0.975,0.98,0.99,0.995]
   FI=Normal()
   q=quantile.(FI,p)
   table=toTable(q,"x",p,raw"\Phi(x)")

   N=rand(8:12)
   F=Normal(MU,4*SIGMA)

   X=rand(F,N); X=r(X)
   SUM=sum(X); SUM=r(SUM)
   MEAN=mean(X); MEAN=r(MEAN)
   SUM2=sum(X.*X) ; SUM2=r(SUM2)
   u=(mean(X)-MU)/(SIGMA/sqrt(N)) ; u=r(u)
   al=rand([0.10,0.05,0.02,0.01],3)
   c=quantile.(FI,al); c=r(c)

   jv=""

   if u >= c[1]
      jv=raw"\text{{\it elfogadjuk}, mivel } u=__U \ge __C "
   else
      jv=raw"\text{{\it elvetjük}, mivel } u= __U < __C "
   end
   jv=replace(jv, [
      "__U",toS(u),
      "__C",toS(c[1])
   ])


qText=replace(raw"""
\szak{Feladat: } Egy zacskós tea-féle névleges (átlagos) tömege a gyártó állítása szerint $ __MU $ gramm,
$ __SIGMA $ gramm szórással. A vásárlók véleménye szerint a zacskók (átlagosan) kevesebb mint
$ __MU $-gram teát tartalmaznak. Az ellenőrzés céljából véletlenszerűen megvizsgáltak  néhány
terméket ( $ X_{1},\ldots,X_{__N}$ ) és a következőket kapták:
$$
\sum_{k=1}^{ __N } X_{k}= __SUM \hspace{1cm} \sum_{k=1}^{ __N } X^{2}_{k}= __SUM2
$$
A töltőtömeg normalitását feltételezve a tesztelje a fogyasztók véleményét
$ \alpha=__ALPHA $ szinten!

\szak{Megoldás: } Tudjuk hogy normális a sokaság, ismerjük a szórást, a várható értékre
vonatkozó kérdésről akarunk dönteni, ezért $ u $-próbát használunk.
A hipotéziseink:
\begin{gather*}
H_{0}: \mu = __MU\\
H_{1}: \mu < __MU\\
\end{gather*}
(Itt a $ H_{1} $ felel meg a vásárlók állításának.)
A próbastatisztika
$$
u=\frac{\overline{X}-__MU}{__SIGMA}\sqrt{__N} \hspace{0.5cm}\overset{H_{0}}{\sim}\hspace{0.5cm}{{\cal N}(0,1)}
$$
Ha $H_{0}$ igaz, akkor $ u $ sztenderd-normális eloszlású.
Számolások:
\begin{gather*}
\overline{X}=\frac{__SUM}{__N}=__MEAN\\
u=\frac{__MEAN-__MU}{__SIGMA}\sqrt{__N}=__u\\
\end{gather*}
$\alpha= __ALPHA $-szinten kell elvégezni a próbát, ezért keresünk egy $ C $ számot a
$$
__TABLE
$$
táblázat segítségével, melyre:
\begin{gather*}
P(u \ge C)=1-__ALPHA=__AL1\hspace{0.5cm}\text{(ez a null-hipotézisnek felel meg)}\Leftrightarrow\\
P(u < C)=__ALPHA \hspace{0.5cm}\text{(ez az alternatívának felel meg)}\Leftrightarrow\\
\Phi(C)=__ALPHA\hspace{0.5cm} \text{(normalitás)}\Leftrightarrow\\
\Phi(-C)=1-__ALPHA=__AL1\\
\end{gather*}
$\Rightarrow\hspace{1cm} C=__C $, ezért $ H_0 $-t $ __ALPHA $-szinten
$$
__jv.
$$
""",[
   "__TABLE",table,
   "__MU",toS(MU),
   "__SIGMA",toS(SIGMA),
   "__N",toS(N),
   "__SUM2",toS(SUM2),
   "__SUM",toS(SUM),
   "__MEAN",toS(MEAN),
   "__ALPHA",toS(al[1]),
   "__AL1",toS(1-al[1]),
   "__AL2",toS(1-al[1]/2),
   "__u",toS(u),
   "__C",toS(c[1]),
   "__jv",jv
])


print(_out,qText)

end
