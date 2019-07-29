function [clusters] = AssignToClusters2(A,seedMeans)
% clusters=zeros(size(A,1),size(A,2));
kclusters=zeros(size(A,1),size(A,2),size(seedMeans,1));
for i=1:size(seedMeans,1)
    kclusters(:,:,i)=(A(:,:,1)-seedMeans(i,:,1)).^2 + (A(:,:,2)...
        -seedMeans(i,:,2)).^2 + (A(:,:,3)-seedMeans(i,:,3)).^2;
end
% [r,c] = find(kclusters(:,:,:)==min(kclusters(:,:,:))) ;   % Get row and column indices.
%  for k = 1 : size(seedMeans,1)
%      kclusters(r(k), c(k)) = 0 ;
%  end
%  clusters=kclusters;
% k=1:size(seedMeans,1);
% kclusters(kclusters(:,:,k)==min(kclusters(:,:,:)))=0;
% clusters=kclusters;
% for k=1:size(seedMeans,1)
%     clusters=(kclusters(:,:,k)==min(kclusters(:,:,:)));
% end
% clusters=A(W);
temppoints=find(kclusters(1:size(A,1),1:size(A,2),:)==min(kclusters(1:size(A,1),1:size(A,2),:)));
for ii=1:size(A,1)
    for jj=1:size(A,2)
        points=find(kclusters(ii,jj,:)==min(kclusters(ii,jj,:)));
%         if length(temppoints)>1
%             clusters(ii,jj)=temppoints(1,1);
%         else
%             clusters(ii,jj)=temppoints;
%         end
    end
end
if temppoints==points
    clusters=1;
else
    clusters(:,:,1)=temppoints;
    clusters(:,:,2)=points;
end
end