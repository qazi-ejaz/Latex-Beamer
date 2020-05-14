x = -1:.05:1;
for n = 1:8
subplot(4,2,n);
plot(x,sin(n*pi*x));
end
