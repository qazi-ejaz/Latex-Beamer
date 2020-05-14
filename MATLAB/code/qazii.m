clc; clear all;
disp('this program is used to solve the quadratic eqn');
disp('Ax2+Bx+c=0');
a=input('enter the value of A:__');
b=input('enter the value of B:__');
c=input('enter the value of C:__');
d=b^2-4*a*c;
if (d==0)
x=(-b/2*a);
disp('equal roots')
disp(['x1=x2=',num2str(x)])
else
x1=((-b+sqrt(d))/(2*a));
x2=((-b-sqrt(d))/(2*a));
disp('distinct roots');
disp(['x1=   ',num2str(x1)])
disp(['x2=   ',num2str(x2)])
end
