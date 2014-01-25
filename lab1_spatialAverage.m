image = imread('bellucci.jpg')
%for n = 1:10
x = size(image)
result = zeros(x(1), x(2))
for i = 1:x(1)
    for j = 1:x(2)
        result(i,j) = 1
    end
end
result