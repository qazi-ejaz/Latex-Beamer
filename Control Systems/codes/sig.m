x=[0,1,2,3]; %input
N=4; %time period
n=0:N-1; %t i m e i n d e x
k=0:N-1; %f r e q u e n c y i n d e x
W=exp(-j*2*pi/N);
nk=n'*k;
Wnk=W.^nk;
f=0.1;
X=x*Wnk