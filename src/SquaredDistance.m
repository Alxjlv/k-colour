% This function calculates the distance between 2 points in 3D space. 
% The points provided should have only 3 values. This function is fairly 
% calls each position of the 3 point arrays provided and calculates the 
% distance based on this formula: D=(P1-Q1)^2 + (P2-Q2)^2 + (P3-Q3)^2
% Inputs: P: This is one of the points that we want to compare the distance
%         to. This should have 3 values but can be 1x1x3,3x1,1x3.
%         Q: This is the other point we want to compare the distance to.
%         This should have 3 values but can be 1x1x3,3x1,1x3.
% Output: D: This is the squared distance between the two points.
% Author: Alex Verkerk

function D = SquaredDistance(P,Q)
D=(P(1)-Q(1)).^2 + (P(2)-Q(2)).^2 + (P(3)-Q(3)).^2;
end