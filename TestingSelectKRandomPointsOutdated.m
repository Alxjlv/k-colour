tic
clear;
% % A=[231,132,73,21,232;112,15,153,170,46;210,111,115,96,101;143,86,119,22,202;361,445,420,69,330];
A=[2,3,4;5,6,7;8,9,10;11,12,13];
k=input('Please enter the number of points: ');
% B=zeros(k,2);
sc=size(A,2);
sr=size(A,1);
cols=1:sc;
rows=1:sr;
% R=randi(size(A,2),size(A,1))
% t=randperm(size(A,1),k);
% j=randperm(size(A,2),k);
% % B=[A(t,1),A(j,2)]
% B=[j;t]';

n=1:numel(A);
O=ones(sr,sc);
% A=A';
V=A(:)';
t=1:size(V);
L=randperm(length(V),k);
N=V(L);
toc