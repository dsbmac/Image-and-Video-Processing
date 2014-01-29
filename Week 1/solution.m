% Task 2 RGB
I1 = imread('bellucci.jpg');
[n,m,d] = size(I1);
I2 = I1;
NeigborhoodSize=3;
for p = 1:d %Color range (gray/rgb)
    for i = 1:n %Average neighboring pixels (8pix)
        for j = 1:m
            Range = (NeigborhoodSize-1)/2; %asumming symmetric patch
            k(1) = i - Range; %begining of neighborhood in x dir
            k(2) = i + Range; %end of neighborhood in x dir
            l(1) = j - Range; %begining of neighborhood in y dir
            l(2) = j + Range; %end of neighborhood in y dir
            if (i-Range)<1 %edge
                k(1) = 1;
            end
            if (i+Range)>n %edge
                k(2) = n;
            end
            if (j-Range)<1 %edge
                l(1) = 1;
            end
            if (j+Range)>m %edge
                l(2) = m;
            end
            Neighborhood = I1([k(1):k(2),p],[l(1):l(2)],p); 
            [x,y] = size(Neighborhood);
            I2(i,j,p) = sum(Neighborhood(:))/(x*y);
        end
    end
end
figure('units','normalized', 'outerposition',[0 0 1 1])
subplot(1,2,1)
image(I1)
subplot(1,2,2)
image(I2)