
clear all;
close all;

graphics_toolkit ('gnuplot')

pkg load image;


I = imread("lenna.png");
I = rgb2gray(I);
imshow(I);

figure();

wi = stdWMark(I,40,2);

imshow(wi);