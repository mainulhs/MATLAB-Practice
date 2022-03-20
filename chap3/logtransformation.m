%log tranformations
%s=clog(1+r) where c is constant and assumed that r>=0

r=imread('C:\Users\Mainul Hassan\Documents\Image Database\logt.tif');
I2=double(r);
s1=1*log(1+I2);
s2=2*log(1+I2);
s3=3*log(1+I2);

subplot(2,2,1);
imshow(r);
title('Fourier spectram')
subplot(2,2,2),
imshow(s1);
title('Result of applying the log transformation ,C=1')
subplot(2,2,3),
imshow(s2);
title('Result of applying the log transformation C=2')
subplot(2,2,4),
imshow(s3);
title('Result of applying the log transformation,C=3')