Kp=[1];	% Enter any numerical value for the proportional gain
num=[1.151 0.1774];
num1=conv(Kp,num);
den1=[1 0.739 0.921 0];
[numc,denc]=cloop(num1,den1);
step(numc,denc)