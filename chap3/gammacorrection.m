%gamma correction 
%gamma correction equation is  s=c*r^gamma where c and gamma are positive
%constants
% gamma less than 1
i=imread('C:\Users\Mainul Hassan\Documents\Image Database\fractured_spine.tif');
%r1=r/255;
r=im2double(i);
s1=r.^0.6;
s2=r.^0.4;
s3=r.^0.3;
subplot(2,2,1);
imshow(i);
title('MRI OF FRACTURED HUMAN SPINE')
subplot(2,2,2),
imshow(s1);
title('GAMMA CORRECTION WITH GAMA=0.6 ,C=1')
subplot(2,2,3),
imshow(s2);
title('GAMMA CORRECTION WITH GAMA=0.4 ,C=1')
subplot(2,2,4),
imshow(s3);
title('GAMMA CORRECTION WITH GAMA=0.2 ,C=1')