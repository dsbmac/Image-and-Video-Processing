I = imread(bellucci_gray);
[m,n,p] = size(I);
neighbourhood = 3;
result = I;

% traverse width
for i = 1:m
    %traverse height
    for j = 1:n
        if (mod(i,neighbourhood)==0 && mod(j,neighbourhood) == 0)
            avgNeighbourhood(i,j)
        end
    end
end

function l = avgNeighbourhood(i,j)

end

       
            
            
            