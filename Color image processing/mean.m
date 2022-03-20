%Spatial Filter:  Min filtering
I = imread('C:\Users\Mainul Hassan\Documents\Image Database\papyaleaves.jpg'); %Read Image
subplot(2,2,1),        %Plot in the fiqure 
imshow(I);             %Display image
title('Orginal image')
Isp = imnoise(I,'salt & pepper',0.03); %Add 3% (0.03) salt and pepper noise
subplot(2,2,2), 
imshow(Isp);                           %Display result image Isp
title('After adding salt & paper noise')
Ig = imnoise(I,'gaussian',0.02);       %Add Gaussian noise (with 0.02 variance)
subplot(2,2,3), 
imshow(Ig);                            %Display result image Ig
title('After adding gaussian noise')
figure
%Applying Min filter
k = ones(3,3)/9;                       %Define mean filter
Im= imfilter(I,k);                     %Apply to original image
Ispm = imfilter(Isp,k);                %Apply to salt and pepper image
Igm = imfilter(Ig,k);                  %Apply to Gaussian image
subplot(2,2,1), imshow(Ispm);          %Display result image
title('After Removing salt & paper noise');
subplot(2,2,2), imshow(Igm);           %Display result image
title('After Removing gaussian noise');