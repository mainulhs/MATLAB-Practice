% Histogram Specification
% Load input & reference image

img_src=imread('C:\Users\Mainul Hassan\Documents\Image Database\lenablur.jpg');

ref=imread('C:\Users\Mainul Hassan\Documents\Image Database\lenaoriginal.tif');

% Separate input image’s color channel
imgr = img_src(:,:,1);
imgg = img_src(:,:,2);
imgb = img_src(:,:,3);

%Separate reference image’s color channel

imgr2 = ref(:,:,1);
imgg2 = ref(:,:,2);
imgb2 = ref(:,:,3);

%% PreProcessing

% Compute input’s histogram
Hnimgr = imhist(imgr)./numel(imgr);
Hnimgg = imhist(imgg)./numel(imgg);
Hnimgb = imhist(imgb)./numel(imgb);

% Compute reference’s histogram
Hnimgr2 = imhist(imgr2)./numel(imgr2);
Hnimgg2 = imhist(imgg2)./numel(imgg2);
Hnimgb2 = imhist(imgb2)./numel(imgb2);

% Histogram specification, using image reference
outr = histeq(imgr,Hnimgr2);
outg = histeq(imgg,Hnimgg2);
outb = histeq(imgb,Hnimgb2);

histsp(:,:,1) = outr;
histsp(:,:,2) = outg;
histsp(:,:,3) = outb;

%% Plot histogram & Display Image
%Show Image
figure;
subplot(221);imshow(ref);title('Reference Image');
subplot(222);imshow(img_src);title('Input Image');
subplot(224);imshow(histsp);title('Result Image');

% Plot for histogram specification
figure;
subplot(331);plot(Hnimgr);title('Red Input');
subplot(334);plot(Hnimgg);title('Green Input');
subplot(337);plot(Hnimgb);title('Blue Input');
subplot(332);plot(Hnimgr2);title('Red Ref');
subplot(335);plot(Hnimgg2);title('Green Ref');
subplot(338);plot(Hnimgb2);title('Blue Ref');
subplot(333);imhist(outr);title('Red Result');
subplot(336);imhist(outg);title('Green Result');
subplot(339);imhist(outb);title('Blue Result');