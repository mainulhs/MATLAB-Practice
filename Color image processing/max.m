%Spatial Filter:  Max filtering
Im = imread('C:\Users\Mainul Hassan\Documents\Image Database\papyaleaves.jpg'); %Read Image
if(size(Im,3)==3)
I =rgb2gray(Im);
end
subplot(2,2,1); imshow(I);             %Display image
title('Original image');
% Add salt & pepper noise
B = imnoise(I,'salt & pepper', 0.03);   %Add 3% (0.03) salt and pepper noise
subplot(2,2,2); imshow(B);
title('Image with salt & pepper noise');
% Remove Salt & pepper noise by max filters
func = @(x) max(x(:));                  %Set filter to apply
K = nlfilter(B,[3 3],func);             %Apply over 3 x 3 neighbourhood
subplot(2,2,3), imshow(K);              %Display result image K
title('After Remove salt & pepper noise by Max filter');
figure
subplot(2,2,1); imshow(I);
title('Original image');
% Add gaussian noise
Ig = imnoise(I,'gaussian',0,0.005);     %Add Gaussian noise (with 0.005 variance)
subplot(2,2,2); imshow(Ig); 
title('Image with gaussian noise');
% Remove gaussian noise by max filters
func = @(x) max(x(:));                  %Set filter to apply
K = nlfilter(B,[3 3],func);             %Apply over 3 x 3 neighbourhood
subplot(2,2,3), imshow(K);              %Display result image K
title('After Remove gaussian noise by Max filter');