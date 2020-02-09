tic
clear;
A=imread('clocktower','jpg');
% A=[2,3,4;5,6,7;8,9,10;11,12,13];
% A=[1,2;3,4];
k=200;
lengthOfCols=size(A,2);
lengthOfRows=size(A,1);

O=ones(lengthOfRows,lengthOfCols);
r=O.*(1:lengthOfRows)';
c=O.*(1:lengthOfCols);

% R=zeros(1,k);
% C=zeros(1,k);
points=zeros(k,2);
points(1,1)=r(randi(numel(O)));
points(1,2)=c(randi(numel(O)));
while length(points) ~= k
    temppoints = [r(randi(numel(O))),c(randi(numel(O)))];
    if ~ismember(temppoints,points,'rows')
        points=[points;temppoints];
    end
end
% points=[R;C]';
toc