% a function which will take in three variables, z = [x_0,y_0]
function[y] = euler(g,z,start,stop,h)
x = start:h:stop;
y = 0*x; 
y(1) = z(2); 
iter = size(x);
for i = 2:iter(2),
    y(i)=y(i-1)+h*g(x(i-1),y(i-1));   % Eulers method for y' = f(x_0,y_0)
end
 % uncomment this section if you want to compute the error for y' = y
 %err = max(abs(y-exp(x)));
 %err
 %plot(x,y)
 %hold on 
 %plot(x,exp(x))
