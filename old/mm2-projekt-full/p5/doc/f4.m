clf ;
hold on ;
xx = [ -20:0.05:-1, -1:0.01:1, 1:0.05:20 ] ;

F = @( x ) sin( x ) ./ x + 2 * ( cos( x ) - 1 ) ./ x.^2 ;
plot( xx, F( xx ) ) ;

dom = ( -1 <= xx & xx <= 1 ) ;
plot( xx( dom ), abs( xx( dom ) ), 'r' ) ;
legend('F', 'f' ) ;

plot( xx( xx < -1 ), 0 * xx( xx < -1 ), 'r' ) ;
plot( xx( xx > 1 ), 0 * xx( xx > 1 ), 'r' ) ;
axis( [ -Inf, Inf, -1, 1.3 ] ) ;
print('f4plot','-dpdf') ;
