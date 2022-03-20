%J=imread('D:\zainal\cg\DIP3E_Original_Images_CH03\Fig0333(a)(test_pattern_blurring_orig).tif');
J=imread('D:\zainal\cg\DIP3E_Original_Images_CH03\Fig0335(a)(ckt_board_saltpep_prob_pt05).tif');
imshow(J)
K = filter2(fspecial('average',5),J)/255;
figure, imshow(K)
L = medfilt2(J,[3 3]);
figure, imshow(L)