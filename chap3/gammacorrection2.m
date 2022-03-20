%gamma correction 
%gamma correction equation is  s=c*r^gamma where c and gamma are positive
%constants
% gamma greater  than 1
i=imread('D:\zainal\cg\DIP3E_Original_Images_CH03\Fig0309(a)(washed_out_aerial_image).tif');
%r1=r/255;
r=im2double(i);
s1=r.^3;
s2=r.^4;
s3=r.^5;
subplot(2,2,1);
imshow(i);
title('Aerial image')
subplot(2,2,2),
imshow(s1);
title('GAMMA CORRECTION WITH GAMA=3 ,C=1')
subplot(2,2,3),
imshow(s2);
title('GAMMA CORRECTION WITH GAMA=4 ,C=1')
subplot(2,2,4),
imshow(s3);
title('GAMMA CORRECTION WITH GAMA=5 ,C=1')