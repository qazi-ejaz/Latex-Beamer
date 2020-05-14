function y=myIDFT(x,N) %DFT, same as fft
n=0:N-1;
k=0:N-1;
W=exp(-j*2*pi/N) ;
Wnk=W.^(-n'*k); %DFS matrix
y=Wnk*x/N;