function [ ] = plot_all_mim( data )
%Plots all MIM approach curves
%   Note the z index range of contact points for later use.
%   You may use zs (applied piezo voltage) rather than z (measured
%   displacement), and make the appropriate changes in mim_toppo and
%   mim_absolute (change the 3 to a 2)
for i = 1:size(data,3)
    zs = data(:,2,i);
    z = data(:,3,i);
    %force = data(:,4,i);
    mim = data(:,6,i);

    hold all
    plot(z,mim)
    %plot(z(maxind),mim(maxind),'X')
    hold off
       
end

end

