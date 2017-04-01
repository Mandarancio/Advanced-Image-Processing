
clear all;
close all;

function [subimg] = cut(i, r)
  subimg = i(r(2):r(2)+r(4),r(1):r(1)+r(3));
endfunction
#{
function [z] = PCA(X)
  mu = mean(X);
  Xm = bsxfun(@minus, X, mu);
  C = cov(Xm);
  [V,D] = eig(C);
  [D, i] = sort(diag(D), 'descend');
  z= V(:,i);

endfunction
#}

%graphics_toolkit ('gnuplot')

pkg load image;
pkg load statistics;
I = imread('parts.png');
I = uint8(conv2 (I, ones (2,2) / 25, "same"));
%imsmooth(I,"Gaussian");
[l,s] = graythresh(I);
i =imcomplement(im2bw (I, l));
i = medfilt2(i);


figure(1);
imshow(i);
hold on;

labels= bwlabel(i);
#coloredLabels = label2rgb (labels, 'hsv', 'k', 'shuffle'); % pseudo random color labels
figure(2);
vislabels(labels);

figure(4);
vislabels(labels);

regions = regionprops(i, 'Area', 'BoundingBox', 'FilledArea', 'Perimeter','EulerNumber','Orientation','EquivDiameter');
ee = regionprops(i,'Eccentricity');
datas_x = [];
datas_y = [];
datas_z = [];
xys = [];

l1 = [];
l2 = [];
l3 = [];
l4 = [];

for j=1:length(regions)
  bb = regions(j).BoundingBox;
  if (bb(1)<300 && bb(2)<280)
    l1(end+1) = j;
  elseif (bb(1)>=270 && bb(2)<280)
    l2(end+1) = j;
  elseif (bb(1)<340 && bb(2)>=280)
    l3(end+1) = j;
  else
    l4(end+1) = j;
  endif
  %[U, S, V]= svd(small_i);
  area = regions(j).Area;
  farea = regions(j).FilledArea;
  a_ratio = ee(j).Eccentricity;
  g_ratio = regions(j).EulerNumber;
  
  %M = max([bb(3),bb(4)]);
  %m = min([bb(3),bb(4)]);
  ratio =regions(j).FilledArea/regions(j).Area;%regions(j).MajorAxisLength/regions(j).MinorAxisLength;
 
  %size(small_i)(1)/size(small_i)(2);
  datas_y(end+1) = g_ratio;
  datas_x(end+1) = a_ratio;
  datas_z(end+1) =  ratio;
  xys(end+1,:)= [a_ratio, g_ratio, ratio];
  %reshape(imresize(imrotate(small_i,-oo(j).Orientation),[20 20]),[1 20*20]);
endfor

[ids, centers] = kmeans(xys,4);

for j=1:length(regions)
  bb = regions(j).BoundingBox;
  color = 'b';
  %{
  if (ids(j)==2)
    color ='r';
  elseif (ids(j)==3)
    color='g';
  elseif (ids(j)==4)
    color='m';
  endif
  %}
  if sum(find(l2 == j))>0
    color ='r';
  elseif sum(find(l3 == j))>0
    color='g';
  elseif sum(find(l4 == j))>0
    color='m';
  endif

  figure(2);
  rectangle('Position',[bb(1),bb(2),bb(3),bb(4)],'EdgeColor',color);
endfor

for j=1:length(regions)
  bb = regions(j).BoundingBox;
  color = 'b';
 
  if (ids(j)==2)
    color ='r';
  elseif (ids(j)==3)
    color='g';
  elseif (ids(j)==4)
    color='m';
  endif
  figure(4);
  rectangle('Position',[bb(1),bb(2),bb(3),bb(4)],'EdgeColor',color);
endfor

figure(3);
%id1 = find(ids==1);
%id2 = find(ids==2);
%id3 = find(ids==3);
%id4 = find(ids==4);

scatter3(datas_x(l1),datas_y(l1), datas_z(l1),'b');
hold on;
scatter3(datas_x(l2),datas_y(l2), datas_z(l2),'r');
scatter3(datas_x(l3),datas_y(l3), datas_z(l3),'g');
scatter3(datas_x(l4),datas_y(l4), datas_z(l4),'m');
%{
scatter(datas_x(l1),datas_y(l1),'b');
hold on;
scatter(datas_x(l2),datas_y(l2),'r');
scatter(datas_x(l3),datas_y(l3),'g');
scatter(datas_x(l4),datas_y(l4),'m');
%}
xlabel('Eccentricity');
ylabel('EulerNumber');
zlabel('FilledArea/Area');
legend('Class 1','Class 2','Class 3','Class 4');

figure(5);
id1 = find(ids==1);
id2 = find(ids==2);
id3 = find(ids==3);
id4 = find(ids==4);
scatter3(datas_x(id1),datas_y(id1), datas_z(id1),'b');
hold on;
scatter3(datas_x(id2),datas_y(id2),datas_z(id2),'r');
scatter3(datas_x(id3),datas_y(id3),datas_z(id3),'g');
scatter3(datas_x(id4),datas_y(id4),datas_z(id4),'m');
legend('Class 1','Class 2','Class 3', 'Class 4');
xlabel('Eccentricity');
ylabel('EulerNumber');
zlabel('FilledArea/Area');