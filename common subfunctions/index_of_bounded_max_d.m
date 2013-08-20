function [ maxind ] = index_of_bounded_max_d(z,mim,minz,maxz)
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
    [minin,maxin] = get_z_index(z,minz,maxz);
    [~,ind] = max(diff(mim(minin:maxin)));
    maxind = ind + minin;
end

