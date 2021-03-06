% image histogram equalization
% transformation function

i1=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(1)(top_left).tif');
i2=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(2)(2nd_from_top).tif');
i3=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(3)(third_from_top).tif');
i4=imread('C:\Users\Mainul Hassan\Documents\Image Database\Fig0316(4)(bottom_left).tif');
ie1=histeq(i1);
ie2=histeq(i2);
ie3=histeq(i3);
ie4=histeq(i3);

subplot(4,3,1),imshow(i1),
subplot(4,3,2),imshow(ie1),
subplot(4,3,3),imhist(ie1);
title('Histogram of equalized image');
subplot(4,3,4),imshow(i2),
subplot(4,3,5),imshow(i1),
subplot(4,3,6),imhist(ie2);
title('Histogram of equalized image');
subplot(4,3,7),imshow(i3),
subplot(4,3,8),imshow(i1),
subplot(4,3,9),imhist(ie3);

title('Histogram of equalized image');
subplot(4,3,10),imshow(i4),
subplot(4,3,11),imshow(i1),
subplot(4,3,12),imhist(ie4);
title('Histogram of equalized image');
% transformation function
[J1,T1] = histeq(i1);
[J2,T2] = histeq(i2);
[J3,T3] = histeq(i3);
[J3,T4] = histeq(i4);
%x=(0:255)/255;
x=0:255;
figure,plot(x,T1*255,'r',x,T2*255,'g',x,T3*255,'b',x,T4*255,'or');
legend('ploting of transformation function'),