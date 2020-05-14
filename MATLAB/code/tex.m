close all
figure(1);
set(0,'defaultaxesfontsize',12)
set(0,'defaulttextfontsize',16)
set(0,'defaulttextinterpreter','latex')
N = 100; n = 1:N;
y = (1+1./n).^n;
subplot(2,1,1)
plot(n,y,'.','markersize',8)
hold on
axis([0 N,2 3])
plot([0 N],[1, 1]*exp(1),'--')
text(40,2.4,'$y_n = (1+1/n)^n$')
text(10,2.8,'y = e')
xlabel('$n$'), ylabel('$y_n$')