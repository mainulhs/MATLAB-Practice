%To rotate given image using standard Matlab function imrotate()
%To transform image using standard Matlab function imtransform()
% using shearing matrix
im = imread('C:\Users\Mainul Hassan\Documents\Image Database\cameraman.jpg');
x = rgb2gray(im);

%For rotation
subplot(2,2,1); imshow(x); title('Orignial Image');
y=imrotate(x,45,'bilinear','crop');
subplot(2,2,2); imshow(y); title('Image rotated by 45 degree');
y=imrotate(x,90,'bilinear','crop');
subplot(2,2,3); imshow(y); title('Image rotated by 90 degree');
y=imrotate(x,-45,'bilinear','crop');
subplot(2,2,4); imshow(y); title('Image rotated by -45 degree');

%For shearing
tform = maketform('affine',[1 0 0; .5 1 0; 0 0 1]);
y = imtransform(x,tform);
figure;
subplot(2,2,1); imshow(x); title('Orignial Image');
subplot(2,2,2); imshow(y); title('Shear in X direction');
tform = maketform('affine',[1 0.5 0; 0 1 0; 0 0 1]);
y = imtransform(x,tform);
subplot(2,2,3); imshow(y); title('Shear in Y direction');
tform = maketform('affine',[1 0.5 0; 0.5 1 0; 0 0 1]);