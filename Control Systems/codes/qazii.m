de=0.2;Kp=9;Kd=4;
numc=[1.151*Kd 1.151*Kp+0.1774*Kd 0.1774*Kp];
denc=[1 0.739+1.151*Kd 0.921+1.151*Kp+0.1774*Kd 0.1774*Kp];
t=0:0.01:10;
step (de*numc,denc,t)
