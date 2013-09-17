function [ maxind ] = index_of_bounded_max_d(z,mim,minz,maxz)
%Determine the index at which dMIM(z)/dz is greatest, within z interval
%[minz,maxz]
%   Used for determining point of contact from MIM signal
    [minin,maxin] = get_z_index(z,minz,maxz);
    [~,ind] = max(diff(mim(minin:maxin)));
    maxind = ind + minin;
end

