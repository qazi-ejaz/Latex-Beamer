clear all
clc
%% without disturbance
for ka=50:50:300
q=ka*500;
fr=tf([q],[1 1020 20000 0]);
h=tf([1]);
a=feedback(fr,h);
%step(a),title('without disturbance');
%% with disturbance
fr1=tf([1],[1 20 0]);
h1=tf([q],[1 1000]);
b=feedback(fr1,h1);
e=q+1000;
g=tf([1 e],[1 1020 20000 q]);
figure(ka)
step(g)
l=stepinfo(g)
pause
clear all
clc 
end