let

#x0=1//1
#f(x)=(x^2+x-1)//1
#df(x)=(2x+1)//1

n=2

x0=2//1
A=2//1

p=[-A,0,0,1]//1
f=horner(p)

dp=polyDer(p)
df=horner(dp)


feladat=raw"""
\centerline{\bf{A Newton-módszer algoritmusa}}
\vspace{1cm}
{\leftline{\bf Feladat:}} Közelítsük az $__p=0$ egyenlet gyökét az $x_0=__x0$ pontból indulva, 
Newton módszerrel, __n iterációt végezve!
"""
feladat=replace(feladat,[
   "__x0",toS(x0),
   "__p",polyToS(p),
   "__n",toS(n)
])

feladat*=raw"""
\vspace{1cm}\newline
{\leftline{\bf Megoldás:}}
A Newton-iteráció alapformulája: 
$$
x_{n+1}=x_{n}-\frac{f(x_{n})}{f'(x_{n})}
$$ 
Most $f(x)=__p$ és $f'(x)=__dp$, vagyis ebben az esetben az iteráció
$$
x_{n+1}=x_{n}-\frac{__pn}{__dpn}
$$
alakú (amit néha egyszerűsiteni lehet...) Az első 3 iteráció:
"""

feladat=replace(feladat,[
  "__pn",polyToS(p,x="x_{n}"),
  "__dpn",polyToS(dp,x="x_{n}"),
  "__p",polyToS(p),
  "__dp",polyToS(dp)
])


for it=1:n
  szam=f(x0)
  nev=df(x0)
  x1=x0-szam//nev
  feladat*=replace(raw"""
  $$ x_{__it}=
  __x0-\frac{f(__x0)}{f'(__x0)}= 
  __x0-\frac{__szam}{__nev}=__x1 
  $$
  
  """,[ 
    "__x0",toS(x0),
    "__szam",toS(szam),
    "__nev",toS(nev),
    "__x1",toS(x1),
    "__it",toS(it)
  ])
  x0=x1
end

feladat*=replace(raw"""
\vspace{1cm}
{\leftline{\bf Megjegyzés:}}
Ekkor $f(__x0)=__fx0$. 
""",[
  "__x0",toS(x0),
  "__fx0",toS(@sprintf "%.4f" f(x0))
])

# speci!!!
feladat*=replace(raw"Vegyük észre, hogy itt ${}^{3}\sqrt{__A}$ első pár közelítéséről van szó.","__A"=>toS(A))

print(_out,feladat)

end