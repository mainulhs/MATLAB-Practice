%Log transformation of an image.
%Equation s = clog(1+r) where c is constant value
%Read image..
r = imread('C:\Users\Mainul Hassan\Documents\c.jpg');
I2 = im2double(r);
s1 = 1 * log(1 + I2);
s2 = 2 * log(1 + I2);
s3 = 3 * log(1 + I2);
subplot(2,2,1);
imshow(r);
title('Orginal Image');
subplot(2,2,2);
imshow(s1);
title('After transformation 1');
subplot(2,2,3);
imshow(s2);
title('After transformation 2');
subplot(2,2,4);
imshow(s3);
title('After transformation 3');