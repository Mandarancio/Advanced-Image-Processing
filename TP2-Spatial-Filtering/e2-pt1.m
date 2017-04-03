close all;
clear all;

pkg load image
I = imread('peppers.png');
I = rgb2gray(I);
imshow(I);
i = avgfilter(I,3);
figure()
imshow(uint8(i));

i = avgfilter(I,6);
figure()
imshow(uint8(i));

i = gaussfilter(I);
figure()
imshow(uint8(i));

ii = imnoise (I, "salt & pepper");

figure()
imshow(ii)

figure()
ij = avgfilter(ii,3);
imshow(ij);

figure()
ij = avgfilter(ii,5);
imshow(ij);


ij = medfilt2(ii, [3,3]);
figure()
imshow(ij)


ij = medfilt2(ii, [5,5]);
figure()
imshow(ij)
