% This function selects k points/pixels randomly from an image (A)
% and outputs a k by 2 array. It does this by selecting a random point from
% a column indices array, and a random point from a row indices array, and
% then checking if they are already present in the points array. If they
% aren't, they are then added on to the end of the points array until
% points is fully populated.
% Inputs: A: A 3D image or array in the double format.
%         k: A user selected number for the amount of colours.
% Output: points: A k by 2 array containing the row and column indices for
%                 k random points.
% Author: Alex Verkerk

function [points] = SelectKRandomPoints(A,k)
lengthOfCols=size(A,2); % Finding the length of the columns/rows.
lengthOfRows=size(A,1);

% Creating an array of ones the same size as the image (eg if the image is
% 256x256x3 then this would be 256x256).
O=ones(lengthOfRows,lengthOfCols);

% This creates an array with each row filled by the row number (eg a 2x2
% array would look like [1,1;2,2]). This is our row indices matrix.
r=O.*(1:lengthOfRows)';

% This creates an array with each column filled by the column number (eg a
% 2x2 array would look like [1,2;1,2]). This is our column indices matrix.
c=O.*(1:lengthOfCols);

points = zeros(k,2); % Preallocating the points array for speed.
pos=0; % Making sure that the while loops starts at the correct point.

% This while loop used to extend the array points, populating it with
% unique values. It does this by generating values one by one, and checking
% if they are already in the points array. If they aren't, the value is
% added to the array.
while pos < k % checking if the array is fully populated
    
    % This line below selects 2 random points from the indice matrices
    % established earlier.
    tempPoints = [r(randi(numel(O))),c(randi(numel(O)))];
    
    % Checks if tempPoints already exists in the array; and if it doesn't,
    % then tempPoints is added to the next position in points. This was
    % partially inspired by this reply on mathworks about using ismember:
    % https://au.mathworks.com/matlabcentral/answers/24835-check-whether-
    % a-number-belongs-to-an-array-or-not
    if ~ismember(tempPoints, points, 'rows') 
        points(pos+1,1) = tempPoints(1,1);
        points(pos+1,2) = tempPoints(1,2);
        pos = pos + 1; % Makes sure the same point isn't always filled.
    end
end
end