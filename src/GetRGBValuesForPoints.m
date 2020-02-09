% This function retrieves the colour values of pixels of an image based on
% their coordinates, which are stored in the array 'points', and returns a
% 3D array of the RGB values.
% Inputs: A: A 3D image or array in the double format.
%         points: An array containing the row and column indices for a
%                 number of random points. This can be generated using the
%                 'SelectKRandomPoints' function.
% Outputs: seedMeans: A 3D array of rgb values with one column & 3 layers.
% Author: Alex Verkerk

function seedMeans = GetRGBValuesForPoints(A,points)
seedMeans=zeros(size(points,1),1,3); % Preallocates the seedMeans array

% This loop reads the first coordinate stored in points, then finds the
% coorresponding pixel. It will then read the R, G & B values of that pixel
% and store them in the corresponding 3 layers of seedMeans. This loops
% until the last coordinate stored in points has been processed.
for i=1:size(points,1) 
    seedMeans(i,1,1)=A(points(i,1),points(i,2),1); % R value read & stored
    seedMeans(i,1,2)=A(points(i,1),points(i,2),2); % G value read & stored
    seedMeans(i,1,3)=A(points(i,1),points(i,2),3); % B value read & stored
end
end