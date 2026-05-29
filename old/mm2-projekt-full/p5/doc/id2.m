clf ;
L=-10; U=10;
xx = L:0.0301:U;


subplot(2,1,1)
plot([L,0],[0,0],'r', [0,1],[0,1],'r',[1,U],[0,0],'r')
axis([L-0.5, U+0.5 -1.0 1.5])
legend('id')


subplot(2,1,2)
F = @( w ) -2*(-cos(w)/w + sin(w)./w.^2);
neg=xx(xx<-0.01);
plot( neg, F( neg ), 'b' ) ;
hold on
poz=xx(xx>0.01);
plot( poz, F( poz ), 'b' ) ;
legend('transzformalt')
axis([L-0.5, U+0.5 -1.0 1.5])


print('id2','-dpdf') ;
