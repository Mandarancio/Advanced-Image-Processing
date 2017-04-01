
clear all;
close all;

function [I] = lowrank_svd(U,S,V,k)
 Vtk = V'(1:k,:);
 Uk = U(:,1:k);
 Sk = S(1:k,1:k);
 I = uint8(Uk*Sk*Vtk); 
endfunction



pkg load image;

I = imread("peppers.png");
I = rgb2gray(I);
imshow(I);
[U, S, V]  = svd(I);
figure()

kmax=  min(size(S))
subplot(2,2,1);
i = lowrank_svd(U,S,V,15);
subimage(i);
axis image;
title('SVD_{15}');
subplot(2,2,2);
i = lowrank_svd(U,S,V,30);
subimage(i);
axis image;
title('SVD_{30}');
subplot(2,2,3);
i = lowrank_svd(U,S,V,50);
subimage(i);
axis image;
title('SVD_{50}');
subplot(2,2,4);
i = lowrank_svd(U,S,V,100);
subimage(i);
axis image;
title('SVD_{100}');

figure();

x_ax = 1:kmax;
y_er = [];
for i=x_ax
  Ir = lowrank_svd(U,S,V,i);
  y_er(end+1) = MSE(I,Ir);
endfor
title('MSE vs k');
plot(x_ax,y_er);
xlabel('k')
ylabel('MSE');

In = AWGN(I,625);

MSE_AWGN = MSE(I,In)


[U, S, V]   = svd(In);
figure();

x_ax = 1:kmax;
o_mse = [MSE_AWGN,MSE_AWGN];
x_mse = [1,kmax];



y_er = [];
for i=x_ax
  Ir = lowrank_svd(U,S,V,i);
  y_er(end+1) = MSE(I,Ir);
endfor
title('MSE vs k');
plot(x_mse,o_mse);
hold on;
plot(x_ax,y_er,'r-');
xlabel('k')
ylabel('MSE');
legend('Noisy Image MSE','SVD Reconstruction MSE');
xlim([1,kmax]);

figure()
subplot(1,2,1);
subimage(In);
axis image;
title("Super Noisy image");
subplot(1,2,2);
subimage(lowrank_svd(U,S,V,40));
axis image;
title('Recostructed noisy image, k=40');

figure()
[Uo, So, Vo] =svd(I);
subplot(1,2,1);
subimage(lowrank_svd(Uo,So,Vo,1));
axis image;
title("1-SVD original image");
subplot(1,2,2);
subimage(lowrank_svd(U,S,V,1));
axis image;
title("1-SVD noisy image");