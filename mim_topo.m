function [ topo ] = mim_topo(data,min,max)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:size(data,3)
    z = data(:,3,i);
    mim = data(:,6,i);
    
    maxind = index_of_bounded_max_d(z,mim,min,max);
    
    height(i) = z(maxind);    
end
topo = square_data(height);

end

