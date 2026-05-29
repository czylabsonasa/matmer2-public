clf ;
hold on ;
xx = -20:0.0301:20 ;

F = @( x ) sin( 0.5 * x ) ./ ( 0.5 * x ) ;
plot( xx, F( xx ) ) ;

dom = ( -0.5 <= xx ) & ( xx <= 0.5 ) ;
plot( xx( dom ), ones( size( xx( dom ) ) ), '.r', 'MarkerSize', 4 ) ;

legend('F', 'f' ) ;

dom = -0.5 > xx ;
plot( xx( dom ), 0.0 * xx( dom ), 'r' ) ;
dom = 0.5 < xx ;
plot( xx( dom ), 0.0 * xx( dom ), 'r' ) ;
axis( [ -Inf, Inf, -1, 2 ] ) ;
print('f1plot','-dpdf') ;


