%Edge Detection..
im = imread('C:\Users\Mainul Hassan\Documents\Image Database\tr.tif'); %Read Image
subplot(3,3,1), imshow(im); title('Original Image');
X = rgb2gray(im); %Convertion
I = edge(X);

% Sobal Method
Sobal = edge(I,'sobel',[]);             % here thresh is empty ([]),If we want to add thresh ([0.5]).
subplot(3,3,2); imshow(Sobal); title('EDGE detection using Sobal Method');

% Roberts Method
Roberts = edge(I, 'roberts', []);
subplot(3,3,3); imshow(Roberts); title('EDGE detection using Roberts Method');

% Prewitt Method
Prewitt = edge(I, 'prewitt', []);
subplot(3,3,4); imshow(Prewitt); title('EDGE detection using Prewitt Method');

%Laplacian of Gaussian Method
Log = edge(I, 'log', [], 2);           %here 2 is default value of Sigma for Log filter.
subplot(3,3,5); imshow(Log); title('EDGE detection using Gaussian Method');

% Zero-Cross Method
ZeroCross = edge(I, 'zerocross',0,'horizontal');
subplot(3,3,6); imshow(ZeroCross); title('EDGE detection using Zero-Cross Method');

% Canny Method
Canny = edge(I, 'canny', []);
subplot(3,3,7); imshow(Canny); title('EDGE detection using Canny Method');
