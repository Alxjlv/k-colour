tic
clear;
A=imread('clocktower','jpg');
k=200;
[points] = SelectKRandomPoints(A,k)
toc