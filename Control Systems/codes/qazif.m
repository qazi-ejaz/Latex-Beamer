u=input('u='); % how many times you want to run loop
for g=1:u
kd=input('kd=');
kp=input('kp=');
ki=input('ki=');
s=tf('s');
b=[kd*s^2+kp*s+ki]/[s]; %[kd*s^2+kp*s+ki]/[s];
G=b/(s^2+10*s+20+b)
%figure(g)
step(G),grid on
[wn,z]=damp(G);
l=stepinfo(G);
end