clf ;
hold on ;
xx = -20:0.0301:20 ;

F = @( x ) sin( 0.5 * x ) ./ ( 0.5 * x ) ;
h( 1 ) = plot( xx, F( xx ) ) ;

dom = ( -0.5 <= xx ) & ( xx <= 0.5 ) ;
h( 2 ) = plot( xx( dom ), ones( size( xx( dom ) ) ), '.r', 'MarkerSize', 4 ) ;

dom = -0.5 > xx ;
h( 3 ) = plot( xx( dom ), 0.0 * xx( dom ), 'r' ) ;
dom = 0.5 < xx ;
h( 4 ) = plot( xx( dom ), 0.0 * xx( dom ), 'r' ) ;
axis( [ -Inf, Inf, -1, 2 ] ) ;
legend( h( [ 1 2 ] ), 'F', 'f' ) ;

print('negyszog','-dpdf') ;


