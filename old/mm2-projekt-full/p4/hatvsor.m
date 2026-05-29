
% a függvény csak az adott feladatot egy N-fokú hatványsoros közelítését (p-polinom) adja vissza
function p=hatvsor(N,y0,dy0)
  d = 1; % ezzel érhetjük el hogy egy az egyben a levezetett formulát használhassuk
  a=zeros(N+1,1);
  a(0+d)=y0; 
  a(1+d)=dy0; 
  
  b=zeros(N+1,1);
  b(0+d)=1;
  b(1+d)=1;
  
  
  % a rekurzióban szereplő a(k+2)-t számoljuk
  for k=0:N-2
    a(k+2+d)=(b(k+d)+2*a(k+1+d)*(k+1)+a(k+d))/((k+2)*(k+1));
  end
  p = a(end:-1:1); % az algo novekvő fokszámmal dolgozik
end