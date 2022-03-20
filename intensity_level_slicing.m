%Intensity level slicing
r = imread('C:\Users\Mainul Hassan\Documents\MATLAB\intensity.jpg');%read the image
image = r(:,:,1);
rmin = 100;         %decide the min. level of intensity level slicing range
rmax = 180;         %decide the max. level of intensity level slicing range
[r,c]= size(image); % get the dimensions of image
s = zeros(r,c);     % pre allocate a variable to store the result image
subplot(2,2,1);
imshow(uint8(image))  %display original image
title('Orginal Image')
subplot(2,2,2);
imshow(uint8(s))      %display result image
title('Image after level slicing');