
clear all;
close all;

graphics_toolkit ('gnuplot')

pkg load image;

I = imread('parts.png');

[l,s] = graythresh(I);

i = I<255*l;

imshow(i);
[labels, num] = bwlabel(i);
