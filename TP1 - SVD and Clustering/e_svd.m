
clear all;
close all;

function [I] = lowrank_svd(U,S,V,k)
 Vtk = V'(1:k,:);
 Uk = U(:,1:k);
 Sk = S(1:k,1:k);
 I = uint8(Uk*Sk*Vtk); 
endfunction

graphics_toolkit ('gnuplot')



pkg load image;

I = imread("peppers.png");
I = rgb2gray(I);
imshow(I);
[U, S, V]  = svd(I);

kmax=  min(size(S))
i = lowrank_svd(U,S,V,50);
figure()
imshow(i);
title('SVD_{50}');
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

figure();
In = AWGN(I,625);
imshow(In);
MSE_AWGN = MSE(I,In)


[U, S, V]  = svd(In);
figure();

x_ax = 1:kmax;
o_mse = [MSE_AWGN,MSE_AWGN];
x_mse = [1,kmax];

plot(x_mse,o_mse);
hold on;

y_er = [];
for i=x_ax
  Ir = lowrank_svd(U,S,V,i);
  y_er(end+1) = MSE(I,Ir);
endfor
title('MSE vs k');
plot(x_ax,y_er,'r-');
xlabel('k')
ylabel('MSE');
xlim([1,kmax]);

figure()
imshow(lowrank_svd(U,S,V,100));
title('Recostructed noisy image');