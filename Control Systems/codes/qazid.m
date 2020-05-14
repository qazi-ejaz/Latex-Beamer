num1=[1.151 0.1774]; 
den1=[1 0.739 0.921 0];
num2=[1 0.9]; den2=[1 20]; 
num=conv(num1,num2); 
den=conv(den1,den2);
Wn=0.9;  zeta=0.52; 
rlocus(num,den) 
axis ([-3 0 -2 2])
sgrid(zeta,Wn)  
[K, poles]=rlocfind(num,den)
de=0.2;
[numc,denc]=cloop(K*num,den,-1);
step(de*numc,denc)