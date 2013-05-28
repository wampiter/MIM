function [ ] = plot_all_mim( data )
%UNTITLED15 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:size(data,3)
    %zs = data(:,2,i);
    z = data(:,3,i);
    %force = data(:,4,i);
    mim = data(:,6,i);

    hold all
    plot(z,mim)
    %plot(z(maxind),mim(maxind),'X')
    hold off
       
end

end

