close all;
clear all;

pkg load image
I = imread('peppers.png');
I = rgb2gray(I);
imshow(I);

i = laplacian(I);
figure()
imshow(i);


i = laplacian2(I);
figure()
imshow(i);


i = laplacian3(I);
figure()
imshow(i);

i = laplacian4(I);
figure()
imshow(uint8(i));

i = sharpen(I);
figure()
imshow(i);

i = sharpen(I,2);
figure()
imshow(i);
