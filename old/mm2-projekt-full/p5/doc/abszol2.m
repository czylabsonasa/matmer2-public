clf ;
L=-10; U=10;
xx = L:0.0301:U;


subplot(2,1,1)
plot([L,-1],[0,0],'r', [-1,0],[1,0],'r',[0,1],[0,1],'r', [1,U], [0,0], 'r')
axis([L-0.5, U+0.5 -1.0 1.5])
legend('abs')


F = @( w ) 2 * sin( w ) ./ w + 2 * ( cos( w ) - 1 ) ./ w.^2 ;
subplot(2,1,2)
plot( xx, F( xx ) ) ;
legend('transzformalt')
axis([L-0.5, U+0.5 -1.0 1.5])


print('abszol2','-dpdf') ;
