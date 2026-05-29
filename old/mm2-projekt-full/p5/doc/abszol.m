clf ;
hold on ;
xx = [ -20:0.05:-1, -1:0.01:1, 1:0.05:20 ] ;

F = @( x ) 2 * sin( x ) ./ x + 2 * ( cos( x ) - 1 ) ./ x.^2 ;
h( 1 ) = plot( xx, F( xx ) ) ;

dom = ( -1 <= xx & xx <= 1 ) ;
h( 2 ) = plot( xx( dom ), abs( xx( dom ) ), 'r' ) ;

h( 3 ) = plot( xx( xx < -1 ), 0 * xx( xx < -1 ), 'r' ) ;
h( 4 ) = plot( xx( xx > 1 ), 0 * xx( xx > 1 ), 'r' ) ;
axis( [ -Inf, Inf, -1, 1.3 ] ) ;
legend( h( [ 1 2 ] ), 'F', 'f' ) ;

print('abszol','-dpdf') ;
