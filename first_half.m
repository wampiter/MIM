function [ first_half_data ] = first_half( data )
% Returns first half of data
half_length = floor(size(data,1)/2);
first_half_data = data(1:half_length,:,:,:);
end

