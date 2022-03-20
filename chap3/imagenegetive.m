%image negetive or complement
%equation s=L-1-r;
r=imread('C:\Users\Mainul Hassan\Documents\Image Database\imgn.tif');
%image(r);
s=255-r;
subplot(1,2,1);
imshow(r);
title('Original Image')
subplot(1,2,2),
imshow(s);
title('Negative image obtainned by the negetive transformations')
