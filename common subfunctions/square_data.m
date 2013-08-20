function [ datasq ] = square_data( data )
% Convert set of data points into square array (for square scans)

side = sqrt(size(data,2))

%Check for squareness:
if mod(side,1) ~= 0
    error('non-square data');
end

for i = 1:size(data,2)
    datasq(floor((i-1)/side + 1),mod(i-1,side)+1,:) = data(1,i);
end    


end

