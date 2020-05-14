clear; clc;
set(0,'DefaultTextInterpreter','latex')
t_stop=2*pi;
t_start=0;

Ts1=0.0001 ; %s i m u l a t e c o n t . s i g n a l
t=t_start:Ts1:t_stop;
y=sin(t);

Ts2=pi/10;
k2=0:1:t_stop/Ts2;
y2=sin(k2*Ts2);

Ts3=pi/4;
k3=0:1:t_stop/Ts3;
y3=sin(k3*Ts3);

Ts4=pi/2;
k4=0:1:t_stop/Ts4;
y4=sin(k4*Ts4);

Ts5=pi;
k5=0:1:t_stop/Ts5;
y5=sin(k5*Ts5);


Ts6=2*pi;
k6=0:1:t_stop/Ts6;
y6=sin(k6*Ts6);

subplot(2,3,1); plot(t,y);
axis([0 t_stop -1 1]);
title('continuous signal');xlabel('t');
grid on;

subplot(2,3,2); stem(k2,y2,'MarkerFaceColor','g');
axis([0 t_stop/Ts2 -1 1]); set(gca,'XTick',k2);
title('discrete signal'); xlabel('t_(x_$T_s=\frac{\pi}{10}$ )');
grid on;

subplot(2,3,3); stem(k3,y3,'MarkerFaceColor','g');
axis([0 t_stop/Ts3 -1 1]); set(gca,'XTick',k3);
title('discrete signal'); xlabel('\frac{1}{2}');
grid on;
