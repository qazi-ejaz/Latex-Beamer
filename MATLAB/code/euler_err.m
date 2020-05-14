% this script is used to compute the error graph as a function of h (step
% size)
clear; clc;
start = 0; 
stop = 1000; 
f = @(x,y) -100*y; 
z = [0 1];
h = 0.015; 
x = start:h:stop;
%for i = 1:temp(2), 
    %x = start:h(i):stop;   % need to discretize domain so that y and exp are same size
 y = euler(f,z,start,stop,h);   % call euler and store the approximation
    %err(i) = max(abs(y-exp(x)))  %compute the error for y'=y
%end
err = max(abs((y-exp(-100*x))))
%plot(h,err)   %plot the error and show the linear decrease as a funtion of h
