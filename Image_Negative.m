%Image negative or complement
%Equation for linear transformation s = L-1-r;
%Read the image
r = imread('C:\Users\Administrator\Documents\Image Database\tr.tif');
l = 256;
res = l-1;
s = res - r;
subplot(2,2,1);
imshow(r)
title('Orginal Image');
subplot(2,2,2);
imshow(s)
title('Negative Image');