%INPUT DATA
inputtype = 2;
%change this for input type
if (inputtype ==1)
%parametric signal
x=0:0.1:2*pi;
y=0:0.1:2*pi;
N=length(x);
[X,Y]=meshgrid(x,y);
Z=sin(X.*Y) ; %square matrix for easiness
elseif(inputtype ==2)
%image
colormap('rgb');
Z_rgb=double(imread('xc.png')); %square image
Z=Z_rgb(:,:,2);
N=length(Z);
end
%plot input data
if (inputtype==1)
surf(X,Y,Z);
view(50 ,74) ;
axis([0 2*pi 0 2*pi -2 2])
elseif (inputtype==2)
imagesc(Z) ;
axis square ;
end
%−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
%SVD
[U, S ,V]=svd(Z) ;
%−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
%RECONSTRUCTION
Z_recon=zeros(size(Z)) ;
for n =1:N
u=U( : , n);
lambda=S(n,n);
v=V(:,n);
Z_recon=Z_recon+(lambda*u*v');
if (inputtype==1)
surf(X,Y,Z_recon) ;
view (50 ,74) ;
axis([0 2*pi 0 2*pi -2 2])
elseif (inputtype==2)
imagesc(Z_recon);
axis square;
end
title(['N = ' num2str(n)]);
drawnow;
print(['b' num2str(n)],'-dpng')
%UTIL_FILE_save2png(['MT_SVDdd_MatrixReconstruction−' num2str(n) '.png']) ;
end