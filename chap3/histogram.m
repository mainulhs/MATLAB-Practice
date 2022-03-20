% image histogram 
% four basic image types :dark ,light , low contrast, high contrast and
% their corresponding histograms

i1=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(1)(top_left).tif');
i2=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(2)(2nd_from_top).tif');
i3=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(3)(third_from_top).tif');
i4=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(4)(bottom_left).tif');

subplot(4,2,1),imshow(i1),
subplot(4,2,2),imhist(i1);
title('Histogram of light image');
subplot(4,2,3),imshow(i2),
subplot(4,2,4),imhist(i2);
title('Histogram of low contrast image');
subplot(4,2,5),imshow(i3),
subplot(4,2,6),imhist(i3);
title('Histogram of high contrast image');
subplot(4,2,7),imshow(i4),
subplot(4,2,8),imhist(i4);
title('Histogram of dark image image');