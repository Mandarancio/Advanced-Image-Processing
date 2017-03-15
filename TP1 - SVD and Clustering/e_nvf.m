
clear all;
close all;

%graphics_toolkit ('gnuplot')

pkg load image;


I = imread("lenna.png");
I = rgb2gray(I);

D = 2;
figure(1);
imshow(I);
title("Original Image");
counter = 1;
figure(2);
mses_no =  [];
mses_yes = [];
for n = [10,20,30,40]
  wi_nonvf = stdWMark(I,n,2,false);
  subplot(4,2,counter); subimage(wi_nonvf);
  title(strcat("NO NVF Image with watermark variance of  ",num2str(n)));
  axis image;
  %display(strcat("NO NVF Image : ",num2str(n)));
  mse = MSE(I,wi_nonvf);
  %display(mse)
  mses_no(end+1)=mse;
 
  wi_nvf = stdWMark(I,n,D,true);
  subplot(4,2,counter+1); subimage(wi_nvf);
  title(strcat("NVF Image with watermark variance of  ",num2str(n)));
  axis image;
  %display(strcat("NVF Image : ",num2str(n)));
  mse = MSE(I,wi_nvf);
  %display(mse)
  mses_yes(end+1) = mse;
  counter +=2;
endfor
figure();


 [hax, ~, ~] = plotyy([10,20,30,40],mses_yes,[10,20,30,40],mses_no);

xlabel('Watermark Variance');
ylabel(hax(1),'MSE');
ylabel(hax(2),'MSE');
legend("NVF ON", "NVF OFF");

