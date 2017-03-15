
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
I = medfilt2(imread('parts.png'));

[l,s] = graythresh(I);
i =imcomplement(im2bw (I, l));
i = medfilt2(i);

figure(1);
imshow(i);
hold on;

labels= bwlabel(i);
#coloredLabels = label2rgb (labels, 'hsv', 'k', 'shuffle'); % pseudo random color labels
figure(3);
vislabels(labels);
regions = regionprops(i);
oo = regionprops(i,'FilledArea');
ee = regionprops(i,'Eccentricity');
en = regionprops(i,'Orientation');
datas_x = [];
datas_y = [];
xys = [];

for j=1:length(regions)
  bb = regions(j).BoundingBox;
  %[U, S, V]= svd(small_i);
  %area = regions(j).Area;
  a_ratio = ee(j).Eccentricity;
  g_ratio = oo(j).FilledArea;
  ratio = bb(3)/bb(4);
 
  %size(small_i)(1)/size(small_i)(2);
  datas_y(end+1) = g_ratio;
  datas_x(end+1) = a_ratio;
  xys(end+1,:)= [g_ratio, a_ratio, ratio, en(j).Orientation ];
  %reshape(imresize(imrotate(small_i,-oo(j).Orientation),[20 20]),[1 20*20]);
endfor

[ids, centers] = kmeans(xys,4);
for j=1:length(regions)
  bb = regions(j).BoundingBox;
  color = 'b';
  if (ids(j)==2)
    color ='r';
  elseif (ids(j)==3)
    color='g';
  elseif (ids(j)==4)
    color='k';
  endif
  figure(3);
  rectangle('Position',[bb(1),bb(2),bb(3),bb(4)],'EdgeColor',color);
  
endfor
figure(2);
hold on;
id1 = find(ids==1);
id2 = find(ids==2);
id3 = find(ids==3);
id4 = find(ids==4);
scatter(datas_x(id1),datas_y(id1),'b');
scatter(datas_x(id2),datas_y(id2),'r');
scatter(datas_x(id3),datas_y(id3),'g');
scatter(datas_x(id4),datas_y(id4),'k');
xlabel('Eccentricity');
ylabel('Filled Area')
legend('Class 1','Class 2','Class 3', 'Class 4');
