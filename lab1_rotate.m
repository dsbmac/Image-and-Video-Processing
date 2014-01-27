image = imread('bellucci_gray.jpg')
angle = 90
imageRotated = imrotate(image,angle);
%this will show the images side by side
%subplot(1,2,1), imshow(image)
%subplot(1,2,2), imshow(imageRotated)
imshow(imageRotated)