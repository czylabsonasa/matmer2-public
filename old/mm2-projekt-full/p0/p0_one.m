
function p0_one(feladat,sc)
   arguments
       feladat
       sc=1.7
   end
    
   %feladat=p0_feladatok.f10;

   id=feladat.id;
   equation=feladat.equation;
   domain=feladat.domain;
   rhs=eval(feladat.rhs);
   ivp=feladat.ivp;

   syms y(t);
   egyenlet=diff(y)==rhs(t,y);
   megoldas=dsolve(egyenlet);

   dom_x=domain(1,:);
   dom_y=domain(2,:);

   tmp=num2cell(dom_x);
   tb = linspace(tmp{:},20);
   tmp=num2cell(dom_y);
   yb = linspace(tmp{:},20);
   [T, Y] = meshgrid(tb, yb);

   DT = ones(size(T));
   DY = rhs(T,Y);


   tt=ivp(1,:);
   yy=ivp(2,:);

   m1 = dsolve(egyenlet, y(tt(1))==yy(1));
   num1 = matlabFunction(m1);

   m2 = dsolve(egyenlet, y(tt(2))==yy(2));
   num2 = matlabFunction(m2);

   m3 = dsolve(egyenlet, y(tt(3))==yy(3));
   num3 = matlabFunction(m3);

   clf;
   quiver(T, Y, DT, DY, sc, "ShowArrowHead","off");
   hold on;

   tmp=num2cell(dom_x);
   xx = linspace(tmp{:});
   plot(xx, num1(xx))
   plot(xx, num2(xx))
   plot(xx, num3(xx))

   legend(...
   "vector field", ...
   sprintf("y(%.1f)=%.1f",tt(1),yy(1)), sprintf("y(%.1f)=%.1f",tt(2),yy(2)), sprintf("y(%.1f)=%.1f",tt(3),yy(3)), ...
   "Location", "northeastoutside");


   xlim(dom_x);
   ylim(dom_y);

   tit="$"+[upper(id),equation,"y="+latex(megoldas)]+"$";
   title(tit,'Interpreter','latex')

   set(gcf,'position',[1,1,1000,500])
end

