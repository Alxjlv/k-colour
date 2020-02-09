tic
clear;
% A=[2,3,4;5,6,7;8,9,10;11,12,13];
% A(:,:,1)=[1,2;3,4];
% A(:,:,2)=[5,6;7,8];
% A(:,:,3)=[9,10;11,12];
% points=[1,1;1,2;2,1;2,2];
% k=3;
A=imread('clocktower','jpg');
k=1000;
[points] = SelectKRandomPoints(A,k);
[colours] = GetRGBValuesForPoints(A,points);
% A(points(1,1),points(1,2),1) will retrieve the first point from array
% points in the R section
% colours=A(points(points(t),1),points(points(t),2),1)

% colours=zeros(k,1,3);
% for i=1:k
%     colours(i,1,1)=A(points(i,1),points(i,2),1)
%     colours(i,1,2)=A(points(i,1),points(i,2),2)
%     colours(i,1,3)=A(points(i,1),points(i,2),3)
% end
toc