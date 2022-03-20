%Spatial Median filter
Im = imread('C:\Users\Mainul Hassan\Documents\Image Database\papyaleaves.jpg');%Read Image
if(size(Im,3)==3)                     %Condition
I=rgb2gray(Im);                       %Convertion of rgb image into gray
end
subplot(2,2,1); imshow(I);
title('Original image');

% Add salt & pepper noise
Isp = imnoise(I,'salt & pepper', 0.03); %Add 3% (0.03) salt and pepper noise
subplot(2,2,2); imshow(Isp);
title('Image with salt & pepper noise');
% Remove Salt & pepper noise by median filters
K = medfilt2(Isp);
subplot(2,2,3); imshow(uint8(K));
title('After Remove salt & pepper noise by median filter');
figure;

subplot(2,2,1); imshow(I);
title('Original image');
% Add gaussian noise
Ig = imnoise(I,'gaussian',0,0.005);     %Add Gaussian noise (with 0.005 variance)
subplot(2,2,2); imshow(Ig); 
title('Image with gaussian noise');
% Remove gaussian noise by median filters
K = medfilt2(Ig);                       %Apply to gaussian image
subplot(2,2,3); imshow(uint8(K)); 
title('After Remove Gaussian noise by median filter');
