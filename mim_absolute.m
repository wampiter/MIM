function [ mim_abs_map ] = mim_absolute(data,min,max,lift)
%Generates the MIM signal from raw data by subracting signal at sample
%surface from signal at height lift (um) above
%   min and max should be set by observing plot_all_mim. I have set lift in
%   the range from 0.01u to 0.1u.
addpath('common subfunctions')
for i = 1:size(data,3)
    z = data(:,3,i);
    mim = data(:,6,i);
    
    %Determine index of max dMIM/dz to get point of contact.
    maxind = index_of_bounded_max_d(z,mim,min,max);
    
    %Determine index of point lift above the point of contact.
    [raiseind,~] = get_z_index(z,z(maxind),z(maxind)+lift);
    
    %Take the difference of MIM at these 2 points to get result.
    mim_abs(i) = mim(maxind)-mim(raiseind);  
end
mim_abs_map = square_data(mim_abs);

end

