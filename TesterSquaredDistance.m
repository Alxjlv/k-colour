tic
clear;
% P1=[1,2,3];
% P1=[1;2;3];
% P1(:,:,1)=1;
% P1(:,:,2)=2;
% P1(:,:,3)=3;
% P2=[4,5,6];
% P2=[4;5;6];
% P2(:,:,1)=4;
% P2(:,:,2)=5;
% P2(:,:,3)=6;
% P1=[0,0,0];
% P2=[255,255,255];
Colours(:,:,1)=[192;66;65];
Colours(:,:,2)=[50;73;192];
Colours(:,:,3)=[135;203;135];
% P=Colours(1,1,:);
% Q=Colours(3,1,:);
P=Colours(:,1,1);
Q=Colours(:,1,2);
D = SquaredDistance(P,Q)
toc