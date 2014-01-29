prompt = 'Enter the desired bit depth: '
bitDepth = input(prompt)
%imshow('bellucci.jpg')
RGB = imread('bellucci.jpg')
[X,map] = rgb2ind(RGB, bitDepth)
imwrite(X,map,'myindexedimage.jpg')
imshow('myindexedimage.jpg')