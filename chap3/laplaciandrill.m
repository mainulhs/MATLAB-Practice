U=imread('D:\zainal\cg\DIP3E_Original_Images_CH03\Fig0338(a)(blurry_moon).tif');
fm= U-min(U);
fs1=fm./max(fm);
fs=255*[fm/max(fm)];
    
w4=fspecial('laplacian',0)
w8=[1 1 1;1 -8 1;1 1 1];
f=im2double(U);
g4=f- imfilter(f,w4,'replicate');
g8=f- imfilter(f,w8,'replicate');
imview(f);
figure, imview(fs1),
figure, imview(fs),
figure, imview(g4),
figure,imview(g8)