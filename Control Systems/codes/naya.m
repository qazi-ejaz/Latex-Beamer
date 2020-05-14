% read wave file
x_orig=wavread('testing.wav');

%create tone
fs=44100;
Ts=1/fs;
t=0:Ts:(length(x_orig)-1)/fs;
f=8000;
tone=sin(2*pi*f*t); %+ 20∗randn(size(t))

%make noisy signal
x=x_orig+tone';
a=1;
%using fdatool (fpass=4500, fstop=7000, fs=44100)
b