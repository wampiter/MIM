function [minin,maxin] = get_z_index(z,min,max)
%For some range [min,max] on monatonic vector z get the index range.
%   Used to convert range in heights to range in indecies.
range = min < z & z < max;
minin = find(range,1,'first');
maxin = find(range,1,'last');
end

