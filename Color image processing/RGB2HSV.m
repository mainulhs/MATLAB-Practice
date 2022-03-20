%Convert an RGB image to HSV
I = imread('C:\Users\Mainul Hassan\Documents\Image Database\papyaleaves.jpg');
Ihsv = rgb2hsv(I); 
subplot(1,2,1), imshow(I);
title('Orginal Image');
subplot(1,2,2), imshow(Ihsv);
title('HSV Image');