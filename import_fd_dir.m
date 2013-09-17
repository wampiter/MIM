function [ data ] = import_fd_dir( fd_dir )
%Batch Import of approach data in fd_dir. Simply imports all the approach
%curves found in the 'specs' folder
data_path = strcat('raw_data/', fd_dir, '/specs/');

%Each approach curve has its own file, so first we mush them all together
files = dir(strcat(data_path, '*.txt'));
for i = 1:size(files, 1)
    point_data = importdata(strcat(data_path, files(i).name));
    point_data = point_data.data;
    data(:,:,i) = point_data;
end

%Only use first half of each approach curve since we only want to approach,
%not the retraction.
data = first_half(data);

end

function [ first_half_data ] = first_half( data )
%Returns first half of data
half_length = floor(size(data,1)/2);
first_half_data = data(1:half_length,:,:,:);
end