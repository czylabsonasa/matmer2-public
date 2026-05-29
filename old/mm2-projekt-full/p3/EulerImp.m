
% javított Euler módszer
function [t,y]=EulerImp(F,tr,y0,lepes)
  t=linspace(tr(1),tr(2),lepes+1);
  y=zeros(2,lepes+1);
  h=t(2)-t(1);
  y(:,1)=y0;
  for it=1:lepes
    k1 = F(t(it),y(:,it));
    k2 = F(t(it)+h,y(:,it)+k1*h);
    y(:,it+1)=y(:,it)+h*(k1+k2)/2;
  end
  t=t';
  y=y';
end