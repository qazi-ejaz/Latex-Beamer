x_filt = filter(b,a,x);
[f,X_orig]=createfft(x_orig,44100,2^nextpow2(length(x_orig)));
[f,X]= createfft(x,44100,2^nextpow2(length(x)));
[f,X_filt]= createfft(x_filt,44100,2^nextpow2(length(x_filt)));

subplot 321; plot(x_orig); title('original voice,x'); xlabel('Hz');
subplot 322; plot(f,X_orig); axis([0 20000 0 0.004]);
xlabel('Hz'); title('original signal, x , fft')

subplot 323; plot(x); title('original voice + noise')
subplot 325; plot(x_filt); title('filtered x')
subplot 324; plot(f,X); axis([0 20000 0 0.004]);
xlabel('Hz'); title('noisy signal, x , fft')
subplot 326; plot(f,X_filt); axis([0 20000 0 0.004]);
xlabel('Hz'); title('filtered, x , fft')

gk=audioplayer(x_orig,44100);
play(gk);

xsc=x/(4*(max(x)-min(x)));
gtk=audioplayer(x ,44100);
play(gtk);
audiowrite('noisy.wav',xsc,44100);


xscn=x_filt/(4*(max(x_filt)-min(x_filt)));
gtk=audioplayer(xscn ,44100);
play(gtk);
audiowrite('filtered.wav',xscn,44100);
