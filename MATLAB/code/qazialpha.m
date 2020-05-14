a=-40;c=40;b=1;
g=a:b:c;
h=g;
[r,t]=meshgrid(g,h);
s=r+1i*t;
Hs=1./(s+10); %transfer function
mesh(r,t,abs(Hs));
