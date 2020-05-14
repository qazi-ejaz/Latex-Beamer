de=0.2;
Kp=2;
numc=Kp*[1.151 0.1774];
denc=[1 0.739 1.151*Kp+0.921 0.1774*Kp];
t=0:0.01:30;
step (de*numc,denc,t)
