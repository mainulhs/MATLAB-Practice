% Experiment No. 2 Thresholding (Extreme contrast stretching)
% Scan any document and use this method to make it clean
% Example: scan your own signature and make it clean with
im=imread('C:\Users\Mainul Hassan\Documents\Image Database\tr.tif');
T=input('Enter threshold value between 0 to 255: ');
if(ndims(im)==3)
y=rgb2gray(im);
end
[m,n]=size(y);
subplot(1,2,1), imshow(I); title('Orginal image');
%Implementation of Treshold Function
for i=1:m
for j=1:n
if(y(i,j)>T)
y(i,j)=255;
else
y(i,j)=0;
end
end
end
subplot(1,2,2), imshow(J); title('Image after applying threshold');