function [f,X] = createfft(x,fs,NFFT)
N=length(x);
X_temp=fft(x,NFFT)/N;
f=fs/2* linspace(0,1,NFFT/2+1);
X=2*abs(X_temp(1:NFFT/2+1));