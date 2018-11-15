let
   qname="float1"
   a=rand([2,3,5]) # ez rögzített
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

   mAlak=toS(alak[m],brac=false)
   mSzam=szam[m]
   jv=toS(mSzam,brac=false)

   r1=copy(mSzam)
   d=[1,a,a]
   r1=r1.//d

   r2=copy(mSzam)
   d=[a,1//a,1]
   r2=r2.//d

   r3=copy(mSzam)
   d=[1,a,1//a]
   r3=r3.//d

   Fs=bRep(
      raw" F=\left[ a(__a), k_{-}(__k1), k_{+}(__k2), t(__t) \right] ",
      [
         "__a",string(a),
         "__k1",string(k[1]),
         "__k2",string(k[2]),
         "__t",string(t)
      ]
   )


   qText=bRep(
      raw"""
      \begin{multi}{__QNAME}
      Az $ __F $ rendszerben az $ __MALAK $ mennyiségek rendre: 
      \item* $ __JV $
      \item  $ __RV1 $
      \item  $ __RV2 $
      \item  $ __RV3 $
      \end{multi}
      """, [
         "__QNAME",qname,
         "__F",Fs,
         "__MALAK",mAlak,
         "__JV",jv,
         "__RV1",toS(r1,brac=false),
         "__RV2",toS(r2,brac=false),
         "__RV3",toS(r3,brac=false)
      ]
   )

   print(_out,qText)

end
