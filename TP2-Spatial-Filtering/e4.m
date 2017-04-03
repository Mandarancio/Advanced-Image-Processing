close all;
clear all;

function [i] = cut(I, s)
  sr = size(I);
  dw = uint32((sr(1)-s(1))/2);
  dh = uint32((sr(2)-s(2))/2);
  i = I(dw:dw-1+s(1),dh:dh-1+s(2));
end


pkg load image
I = imread('im02.jpg');
imshow(I);
I = im2double(I);
si = size(I);

Ax = [-1 0 1;
      -1 0 1;
      -1 0 1];
Ay = Ax';

Ix = cut(conv2(I,Ax),si);
Iy = cut(conv2(I,Ay),si);

Ixx = Ix.*Ix;
Iyy = Iy.*Iy;
Ixy = Ix.*Iy;


sigma = 3;
g = fspecial('gaussian',max(1,fix(6*sigma)), sigma);
Lxx = cut(conv2(Ixx,g),si);
Lyy = cut(conv2(Iyy,g),si);
Lxy = cut(conv2(Ixy,g),si);

r = (Lxx.*Lyy - (Lxy.*Lxy))./(Lxx + Lyy);

m = min(mean(r));
r = r/m;
m = max(max(r));
r = r/m;
figure()
imshow(m*r, colormap=colormap('default'));
figure();
imshow(I/2+r/2);
figure();
imshow(I);
hold on;

h = [-1 -1 -1;
     -1  9 -1;
     -1 -1 -1];
xx = r;%cut(conv2(r,h),si);
mm = mean(mean(xx));
step = 20;
for x=1:step:si(1)
  for y=1:step:si(2)
    s = xx(x:x+step-1,y:y+step-1);
    M =max(max(s)) ;
    if M>2*mm 
      c = getcoord(M,s);
      scatter(y+c(2),x+c(1),'g');
    end  
  end
end