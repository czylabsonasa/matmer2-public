_out=raw"Közelítsük az $x^2+x-1=0$ egyenlet gyökét az $x_0=1$-ből indulva, Newton módszerrel, 
3 iterációt végezve!"
A Newton-iteráció alapformulája: 
$$
x_{n+1}=x_{n}-\frac{f(x_{n}}{f'(x_{n})}
$$ 
Itt $f(x)=x^2+x-1$, így $f'(x)=2x+1$, vagyis ebben az esetben az iteráció a
$$
x_{n+1}=x_{n}-\frac{x^2_{n}+x_{n}-1}{2x_{n}+1}
$$
alakú (amit néha egyszerűsiteni lehet...)

x0=1
f(x)=(x^2+x-1)//1
df(x)=(2x+1)//1

A=f(x0)
B=df(x0)
C=x0-A//B
_out*=replace(raw"x1=__x0-\frac{__A}{__B}=__C",[ 
    "__x0",x0,
    "__A",toS(A),
    "__B",toS(B),
    "__C",toS(C)
])
x1=x0

A=f(x0)
B=df(x0)
C=x0-A//B
_out*=replace(raw"x1=__x0-\frac{__A}{__B}=__C",[ 
    "__x0",x0,
    "__A",toS(A),
    "__B",toS(B),
    "__C",toS(C)
])
x1=x0


A=f(x0)
B=df(x0)
C=x0-A//B
_out*=replace(raw"x1=__x0-\frac{__A}{__B}=__C",[ 
    "__x0",x0,
    "__A",toS(A),
    "__B",toS(B),
    "__C",toS(C)
])
x1=x0

