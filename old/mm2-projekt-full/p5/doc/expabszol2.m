clf ;
hold on ;
L=-3; U=3;
xx = [ L:0.05:U ] ;

g=1;
subplot(2,1,1)
plot( xx, exp( -g * abs( xx ) ), 'r' ) ;
axis([L-0.5, U+0.5 -0.5 2.5])
legend('exp...g=1')


subplot(2,1,2)
Fg = @( g, w ) ( 2*g ./ ( g.^2 + w.^2 ) ) ;
F = @(w) Fg( g,w ) ;
plot( xx, F( xx ) ) ;
axis([L-0.5, U+0.5 -0.5 2.5])
legend('transzformalt')


title( sprintf( 'gamma=%.1f', g ) ) ;

print('expabszol2','-dpdf') ;
