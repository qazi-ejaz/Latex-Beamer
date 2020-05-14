fs=8000;
Ts=1/fs;
t=0:Ts:4;
f=1000; %f s >=2f
x=sin(2*pi*f*t);
sound(x,fs)
[f,X]=createfft(x,fs,2^nextpow2(length(x)));
subplot(2,1,1);
plot(t(1:150),x(1:150));
xlabel('\rightarrow sec' ) ;
subplot(2,1,2); 
plot(f,X); xlabel('Hz');
audiowrite('na.wav',x,44100);