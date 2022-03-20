i=imread('D:\zainal\cg\DIP3E_Original_Images_CH03\Fig0316(1)(top_left).tif');
y = fft2(i);
%fftgui(y)
imshow(y)
%in=ifft2(y);
F2 = log(abs(y))
figure,imshow(F2);