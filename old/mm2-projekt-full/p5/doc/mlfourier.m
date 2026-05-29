pkg load symbolic
syms f(t)
f = exp( -abs( t ) ) ;
F = fourier( f )
% ... 
