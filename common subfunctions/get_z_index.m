function [minin,maxin] = get_z_index(z,min,max)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
range = min < z & z < max;
minin = find(range,1,'first');
maxin = find(range,1,'last');
end

