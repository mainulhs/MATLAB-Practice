im=imread('C:\Users\Mainul Hassan\Documents\Image Database\tr.tif');
I = rgb2gray(im);
subplot(1,2,1), imshow(I); title('Orginal image');
J = im2bw(I, 0.5);   %here im2bw() is matlab function for Threshold, We can set the Threshold value.
subplot(1,2,2), imshow(J); title('Image after applying threshold');