%bit plane slicing
%bit plane representation of images
a=imread('C:\Users\Mainul Hassan\Documents\Image Database\dollar.tif');
[m,n]=size(a);
% to extract eight bit plane
for i=1:m
    for j=1:n
        b8(i,j)=bitand(a(i,j),128);
    end
    
end

% to extract seven bit plane
for i=1:m
    for j=1:n
        b7(i,j)=bitand(a(i,j),64);
    end
    
end
% to extract 6 bit plane
for i=1:m
    for j=1:n
        b6(i,j)=bitand(a(i,j),32);
    end
    
end
% to extract 5 bit plane
for i=1:m
    for j=1:n
        b5(i,j)=bitand(a(i,j),16);
    end
    
    
end

subplot(2,2,1);
imshow(b8)
title('bit plane 8')

subplot(2,2,2);
imshow(b7)
title('bit plane 7')

subplot(2,2,3);
imshow(b6)
title('bit plane 6')

subplot(2,2,4);
imshow(b5)
title('bit plane 5')
