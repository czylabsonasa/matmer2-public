clf ;
L=-10;
U=10;
xx = L:0.0301:U ;


subplot(2,1,1)
plot([L, -0.5],[0,0],'r')
hold on
plot([-0.5, 0.5],[1,1],'r')
hold on
plot([0.5,U],[0,0],'r')
legend('negyszog')
axis([L-0.5, U+0.5 -0.5 1.5])


subplot(2,1,2)
F = @( w ) sin( 0.5 * w ) ./ ( 0.5 * w ) ;
plot( xx, F( xx ) ) ;
legend('transzformalt')
axis([L-0.5, U+0.5 -0.5 1.5])

% print('negyszog2','-dpdf') ;


