let
  include("../include/lib.jl")
  include("../include/tex.jl")

  _output=ARGS[1]
  _out=open(_output*".tex","w")
  println(_out,docpre)
  println(_out,quizpre)


  a=rand([2,2,3]) # ez rögzített
  k1=-rand(4:6)
  k=[k1,-k1-1]
  t=rand(4:5)

  egy=[1-1//a^t,1+a//a^t]

  Minf=a^k[2]*(1//1-1//a^t)
  eps0=1//a^(-k[1]+1)
  #siz=(k[2]-k[1]+1)*(a-1)*a^(t-1)
  egybal=egy[1]
  egyjobb=egy[2]
  eps1=egyjobb-1

  szam=[Minf,eps0,egybal,egyjobb,eps1]
  alak=[
    raw"M_{\infty}",
    raw"\varepsilon_{0}",
    raw"1_{-}",
    raw"1_{+}",
    raw"\varepsilon_{1}"
  ]

  m=sample(1:5,3,replace=false)

  mAlak=tstring(alak[m],brac=false)
  mSzam=szam[m]
  jv=tstring(mSzam,brac=false)

  r1=copy(mSzam)
  d=[1,a,a]
  r1=r1.//d

  r2=copy(mSzam)
  d=[a,1//a,1]
  r2=r2.//d

  r3=copy(mSzam)
  d=[1,a,1//a]
  r3=r3.//d

  Fs=mreplace(
    raw" F=\left[ a=__a, k_{-}=__k1, k_{+}=__k2, t=__t \right] ",
    [
        "__a"=>string(a),
        "__k1"=>string(k[1]),
        "__k2"=>string(k[2]),
        "__t"=>string(t)
    ]
  )


  qText=mreplace(
    raw"""
    \begin{multi}{float}
    In the floating point number system $$ __F $$ the values for the quantities 
    $ __MALAK $:
    \item* $ __JV $
    \item  $ __RV1 $
    \item  $ __RV2 $
    \item  $ __RV3 $
    \end{multi}
    """, [
        "__QNAME"=>"float",
        "__F"=>Fs,
        "__MALAK"=>mAlak,
        "__JV"=>jv,
        "__RV1"=>tstring(tstring.(r1),brac=false),
        "__RV2"=>tstring(tstring.(r2),brac=false),
        "__RV3"=>tstring(tstring.(r3),brac=false)
    ]
  )

  println(_out,qText)
  println(_out,quizpost)
  println(_out,docpost)
end
