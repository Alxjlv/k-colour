% This function analyses the mean pixel values for each cluster of the
% image (the clusters having been set previously based on the function
% 'AssignToClusters'). It does this by cycling through each pixel & its
% rgb values, then adding each rgb value into an array based on the cluster
% number. Then this is divided by the total number of times a value was
% added into the array.
% Inputs: A: A 3D image or array in the double format.
%         k: A user selected number for the amount of colours.
%         clusters: A 2D array the same height and width as A with each
%         pixel assigned a cluster number based on k & seedMeans. This can
%         be generated using 'AssignToClusters'
% Output: means: This is a single column array with 3 layers and k rows &
%         contains the mean rgb values for each cluster.
% Author: Alex Verkerk

function [means]=UpdateMeans(A,k,clusters)
R=zeros(1,k); % Preallocating the three arrays used for our RGB values
G=zeros(1,k);
B=zeros(1,k);
count=zeros(1,k); % Preallocating the counts array

% This nested for loop cycles between every pixel of the image. It then
% cycles through each value of t, where t is the number of clusters. If the
% cluster for that specific pixel is the same as the t at that point, the
% rgb values are added into an array at the t position.
for i=1:size(A,1)
    for j=1:size(A,2)
        for t=1:k
            if clusters(i,j)==t
                % This array will add values on values for each pixel per
                % cluster. Eg. a pixel in cluster 4 with r of 215 is added
                % to the column 4 (which could have a value of 2600 from
                % having many values added previously).
                R(t)=R(t)+A(i,j,1);
                G(t)=G(t)+A(i,j,2);
                B(t)=B(t)+A(i,j,3);
                % This count is specific to each column of t. It counts how
                % many values are added to each column.
                count(t)=count(t)+1;
            end
        end
    end
end

% The mean rgb values for each cluster are then calculated by dividing the
% total number by the number of values added to the array. They are then
% stored in the means array.
means(:,:,1)=(R./count)';
means(:,:,2)=(G./count)';
means(:,:,3)=(B./count)';
end