% This function takes the final absolute means value, and the final cluster
% data and converts that into an RGB image.
% Inputs: clusters: A 2D array the same height and width as A with each
%         pixel assigned a cluster number based on the number of user
%         selected colours.
%         means: This is a single column array with 3 layers and the same 
%         number of rows as seedMeans & contains the mean rgb values for 
%         each cluster.
% Output: B: This is an image, with 3 layers (RGB), and the same height
%            and width as clusters.
% Author: Alex Verkerk

function B = CreateKColourImage(clusters,means)
B=zeros(size(clusters,1),size(clusters,2),3); % Preallocating image

% This for loop simply goes through every value of clusters and assigns it
% the mean colour value for that cluster.
for i=1:size(clusters,1)
    for j=1:size(clusters,2)
        B(i,j,:)=means(clusters(i,j),:);
    end
end
B=uint8(B); % Converting to the correct image format
end