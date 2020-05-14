N=10000;
NFFT =2^nextpow2(N);
fs=1000;
Ts=1/fs;
t=(0:N-1)*Ts;
xclean=5*sin(2*pi*220*t) + 2.2*cos(2*pi*120*t);
x=xclean + 20*randn(size(t));
[f,Xclean]=createfft(xclean, fs, NFFT);
[f,X]=createfft(x,fs,NFFT);
subplot(2,2,1); plot(1000*t(1:350),xclean(1:350))
title('Clean signal')
xlabel('time (milliseconds)')

subplot(2,2,2); plot(1000*t(1:350),x(1:350))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('time (milliseconds)')

% plot f f t
subplot(2,2,3); plot(f,Xclean);%x2 b e c a u s e s i n g l e s i d e d
title('Single-Sided Amplitude Spectrum of x_{clean (t)}')
xlabel('Frequency(Hz)')
ylabel('|X_{clean(f)}|')

subplot(2,2,4); plot(f,X) ;%2 i s m u l t i p l i e d b e c a u s e s i n g l e s i d e d
title('Single-Sided Amplitude Spectrum of x(t)')
xlabel('Frequency (Hz)')
ylabel('|X(f)|')
%print('BarPlot','-dpng')
set(gcf,'color','w')