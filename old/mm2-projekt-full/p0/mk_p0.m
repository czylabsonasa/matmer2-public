function y=mk_p0()
   fa=struct();

   p0_feladatok=struct();

   fa.id="f1";
   fa.equation="y'=2e^{3t}-1-y";
   fa.rhs="@(t,y) 2*exp(3*t)-1-y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,0;-2,2];
   p0_feladatok.f1=fa;

   fa.id="f2";
   fa.equation="y'=3e^{2t}+1-y";
   fa.rhs="@(t,y) 3*exp(2*t)+1-y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,0;-2,2];
   p0_feladatok.f2=fa;

   fa.id="f3";
   fa.equation="y'=2e^{4t}-1+2y";
   fa.rhs="@(t,y) 2*exp(4*t)-1+2*y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,-2;-10,10];
   p0_feladatok.f3=fa;

   fa.id="f4";
   fa.equation="y'=-e^{2t}-1+3y";
   fa.rhs="@(t,y) -exp(2*t)-1+3*y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,-2;-20,10];
   p0_feladatok.f4=fa;


   fa.id="f5";
   fa.equation="y'=e^{2t}-3-y";
   fa.rhs="@(t,y) exp(2*t)-3-y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,0;-3,2];
   p0_feladatok.f5=fa;

   fa.id="f6";
   fa.equation="y'=-2e^{2t}+2+2y";
   fa.rhs="@(t,y) -2*exp(2*t)+2+2*y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,-2;-2,10];
   p0_feladatok.f6=fa;

   fa.id="f7";
   fa.equation="y'=-e^{2t}+2+2y";
   fa.rhs="@(t,y) -exp(2*t)+2+2*y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,-2;-2,10];
   p0_feladatok.f7=fa;


   fa.id="f8";
   fa.equation="y' = 2e^{3t}+4+y";
   fa.rhs="@(t,y) 2*exp(3*t)+4+y";
   fa.ivp=[-3,-3,-3;-1,0,1];
   fa.domain=[-3,-2;-2,10];
   p0_feladatok.f8=fa;

   fa.id="f9";
   fa.equation="y' = -3e^{3t}+3+3y";
   fa.rhs="@(t,y) -3*exp(3*t)+3+3*y";
   fa.ivp=[-4,-4,-4;-1,0,1];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f9=fa;


   fa.id="f10";
   fa.equation="y' = -2e^{3t}+3+3y";
   fa.rhs="@(t,y) -2*exp(3*t)+3+3*y";
   fa.ivp=[-4,-4,-4;-1,0,1];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f10=fa;

   fa.id="f11";
   fa.equation="y' = 2e^{3t}-6+2y";
   fa.rhs="@(t,y) 2*exp(3*t)-6+2*y";
   fa.ivp=[-4,-4,-4;2,4,6];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f11=fa;


   fa.id="f12";
   fa.equation="y' = -2e^{t}-1+2y";
   fa.rhs="@(t,y) -2*exp(t)-1+2*y";
   fa.ivp=[-4,-4,-4;0,1,2];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f12=fa;

   fa.id="f13";
   fa.equation="y' = -e^{3t}-5+2y";
   fa.rhs="@(t,y) -exp(3*t)-5+2*y";
   fa.ivp=[-4,-4,-4;1,3,5];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f13=fa;


   fa.id="f14";
   fa.equation="y' = -2e^{3t}-4+y";
   fa.rhs="@(t,y) -2*exp(3*t)-4+y";
   fa.ivp=[-4,-4,-4;1,3,5];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f14=fa;


   fa.id="f15";
   fa.equation="y' = 2e^{3t}-6+2y";
   fa.rhs="@(t,y) 2*exp(3*t)-6+2*y";
   fa.ivp=[-4,-4,-4;1,3,5];
   fa.domain=[-4,-3;-3,10];
   p0_feladatok.f15=fa;


   fa.id="f16";
   fa.equation="y' = -3e^{4t}-2+5y";
   fa.rhs="@(t,y) -3*exp(4*t)-2+5*y";
   fa.ivp=[-5,-5,-5;-1,0,1];
   fa.domain=[-5,-4;-3,10];
   p0_feladatok.f16=fa;

   y=p0_feladatok;
end