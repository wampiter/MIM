function [ topo ] = mim_topo(data,min,max)
%Extrapolates topography from MIM signal
%   min and max from observing plot_all_mim. This gives raw topography.
%   Leveling (eg. subplane) and outlier removal (you can just manually set
%   caxis) are necessary to produce a meaningful result.
addpath('common subfunctions')
for i = 1:size(data,3)
    z = data(:,3,i);
    mim = data(:,6,i);
    
    maxind = index_of_bounded_max_d(z,mim,min,max);
    
    height(i) = z(maxind);    
end
topo = square_data(height);

end

