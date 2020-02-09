% This function selects k points/pixels randomly from an image (A)
% and outputs a k by 2 array. Make sure that the value of k does not exceed
% the size of your image. Warning - for large k values (eg. 200+) this can
% take an extremely long time to complete as the while loop used to check
% that the pixels selected are unique grows exponentially as the value of k
% increases.
% Author: Alex Verkerk

function [points] = SelectKRandomPoints(A,k)
% Finding the length of the columns/rows and then creating a vector between
% 1 and the column/row length
lengthOfCols=size(A,2);
lengthOfRows=size(A,1);
numOfCols=1:lengthOfCols;
numOfRows=1:lengthOfRows;

% Creating an array of ones the same size as the image (eg if the image is
% 256x256x3 then this would be 256x256)
O=ones(lengthOfRows,lengthOfCols);

% This creates an array with each row filled by the row number (eg a 2x2
% array would look like [1,1;2,2]). This is our row location matrix.
r=O.*numOfRows';

% This creates an array with each column filled by the column number (eg a 
% 2x2 array would look like [1,2;1,2]). This is our column location matrix
c=O.*numOfCols;

n=numel(O); % finding the # of elements in the 2D array we'll select from
R=zeros(1,k); % preallocating R & C (which are used at the end)
C=zeros(1,k);
U=0;

% This while loop used to check if unique pixels have been selected. U will 
% have the same length as c when c is populated with fully unique pixel
% combinations.
while length(U) ~= length(C)
    R=r(randperm(n,k)); % choosing k unique values randomly from r
    C=c(randperm(n,k)); % choosing k unique values randomly from c
    
    % Whenever R+4*C is the same value as another(ie the same pixel), then
    % U will be shorter than C. This means that the while loop will
    % continue until only unique values are present.
    U=unique(R+40*C); 
end

% This arranges R & C into a kx2 matrix as requested by ConvertImage.m
points=[R;C]'; 
end