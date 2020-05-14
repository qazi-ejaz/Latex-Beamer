t=0:0.1:2*pi;
M=moviein(4);  
for m=1:40
x=m-t;
y= sin(x/2);
y2=cos(x/2);
a=plotyy(x,y,x,y2);
ylabel(a(2),'Right y-axis label')
M(:,m)=getframe;
end
movie(M,1)