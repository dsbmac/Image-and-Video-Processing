image = imread('bellucci_gray.jpg')
neighbourhood = 20
image = im2double(image);
fun = @(x) mean(x(:)); 
B = nlfilter(image,[neighbourhood neighbourhood],fun); 
imshow(image), figure, imshow(B)