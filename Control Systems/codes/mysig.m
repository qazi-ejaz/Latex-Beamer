% read wave file
x_orig=wavread(testing.wav)

%create tone
fs=44100;
Ts=1/fs;
t=:Ts:(length(x_orig)-1)/fs;
f=8000;
tone=sin(2*pi*f*t);

%make noisy signal
x=x_orig+tone;
%create low pass filter (fpass=4500, fstop=7000,fs=441,00)
b
a = 1 
