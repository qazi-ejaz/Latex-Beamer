de=0.2;
Kp=2;
Kd=3;
Ki=4;
       
numo=[1.151 0.1774];
deno=[1 0.739 0.921 0];
numpid=[Kd Kp Ki];
denpid=[1 0];

num1=conv(numo,numpid);
den1=conv(deno,denpid);

[numc,denc] = cloop(num1,den1);
t=0:0.01:10;      
step (de*numc,denc,t)

