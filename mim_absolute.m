function [ mim_abs_map ] = mim_absolute(data,min,max)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:size(data,3)
    z = data(:,2,i);
    mim = data(:,6,i);
    
    maxind = index_of_bounded_max_d(z,mim,min,max);
    
    [raiseind,~] = get_z_index(z,z(maxind),z(maxind)+0.02);
    
    mim_abs(i) = mim(maxind)-mim(raiseind);  
end
mim_abs_map = square_data(mim_abs);

end

