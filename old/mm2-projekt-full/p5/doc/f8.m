0==1 ;
function rajz( gm )
clf ;
hold on ;
xx = [ -3:0.05:3 ] ;

F = @( g ) @( t ) ( 2*g ./ ( g^2 + t.^2 ) ) ;
% gm = 1
plot( xx, F( gm )( xx ) ) ;

plot( xx, exp( -gm * abs( xx ) ), 'r' ) ;
legend('F', 'f' ) ;
title( sprintf( 'gamma=%.1f', gm ) ) ;

print('f8plot','-dpdf') ;
end
