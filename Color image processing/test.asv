%To see the rgb and hsv component in histogram
Im = imread('C:\Users\Mainul Hassan\Documents\Image Database\papyaleaves.jpg');
subplot(4,2,1), imshow(Im)
title('Orginal Image')
subplot(4,2,2)
red_hist= Im(:,:,1);imhist(red_hist);
title('RED IMAGE HISTOGRAM')
subplot(4,2,3)
green_hist= Im(:,:,2); imhist(green_hist);
title('GREEN IMAGE HISTOGRAM')
subplot(4,2,4)
blue_hist= Im(:,:,3); imhist(blue_hist);
title('BLUE IMAGE HISTOGRAM'); 
Ih = rgb2hsv(Im)
subplot(4,2,5), imshow(Ih)
title('HSV Image')
subplot(4,2,6)
red_hist= Ih(:,:,1);imhist(red_hist);
title('RED IMAGE HISTOGRAM')
subplot(4,2,7)
green_hist= Ih(:,:,2); imhist(green_hist);
title('GREEN IMAGE HISTOGRAM')
subplot(4,2,8)
blue_hist= Ih(:,:,3); imhist(blue_hist);
title('BLUE IMAGE HISTOGRAM'); 