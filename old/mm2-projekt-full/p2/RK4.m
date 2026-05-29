
function [t, y] = RK4(f, tspan, y0, L)
  t = linspace(tspan(1), tspan(2), L+1);
  h = t(2)-t(1);
  y = zeros(size(t));
  y(1) = y0;
  for it=2:L+1
    k1 = f(t(it-1), y(it-1));
    k2 = f(t(it-1)+0.5*h, y(it-1)+0.5*h*k1);
    k3 = f(t(it-1)+0.5*h, y(it-1)+0.5*h*k2);
    k4 = f(t(it-1)+h, y(it-1)+h*k3);
    y(it) = y(it-1) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
  end
end