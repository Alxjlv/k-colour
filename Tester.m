tic
clear;
% A=imread('clocktower','jpg');
% A=double(A);
% A(:,:,1)=[1,2;3,4];
% A(:,:,2)=[5,6;7,8];
% A(:,:,3)=[9,10;11,12];
% points=[1,1;1,2;2,1;2,2];
% k=2;
% maxIterations=50;
% % [points] = SelectKRandomPoints(A,k);
% points(:,:,1)=77;
% points(:,:,2)=125;
% points(:,:,3)=173;
% seedMeans(:,:,1)=[35;101;85;44];
% seedMeans(:,:,2)=[25;149;74;35];
% seedMeans(:,:,3)=[13;197;18;28];
% seedMeans(:,:,1)=[35;101];
% seedMeans(:,:,2)=[25;149];
% seedMeans(:,:,3)=[13;197];
% seedMeans = GetRGBValuesForPoints(A,points);
% clusters = AssignToClusters(A,seedMeans);
% [means]=UpdateMeans(A,k,clusters);
% [clusters, means] = KMeansRGB(A,seedMeans,maxIterations);
A = randi(255,100,100,3);
toc
