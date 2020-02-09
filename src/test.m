points(:,:,1)=77;
points(:,:,2)=125;
points(:,:,3)=173;
seedMeans(:,:,1)=[35;101;85;44];
seedMeans(:,:,2)=[25;149;74;35];
seedMeans(:,:,3)=[13;197;18;28];

for i=1:size(seedMeans,1)
    t(1,i)=SquaredDistance(seedMeans(i,1,:),points(1,1,:));
end
tempclusters(1,2)=(77-35)^2 + (125-25)^2 + (173-13)^2;