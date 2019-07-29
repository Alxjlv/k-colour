% This function calculates the absolute mean of each cluster. It does this
% by first assigning everything to clusters based on randomly selected seed
% means. Then the means are calculated for these clusters. The rest of the
% function then loops through by reassigning clusters based on the new
% means just generated, and then generating new means based on these new
% clusters. Ideally, this will result in a point where the means stop 
% changing (convergence), and the clusters that would be assigned would be 
% the same each time. If this does not happen, then the loop would continue
% infinitely. Thus the code has a check to make sure that this doesn't
% happen by specifying the maximum number of iterations the code can go
% through.
% Inputs: A: A 3D image or array in the double format.
%         seedMeans: A 3D array of rgb values with one column & 3 layers.
%         This can be generated by 'GetRGBValuesForPoints'
%         maxIterations: This is a user specified value for how much the
%         code is allowed to loop.
% Outputs: clusters: A 2D array the same height and width as A with each
%          pixel initially assigned a cluster number based on the size and 
%          value of seedMeans. This will update for every loop of KMeansRGB
%          based on the new means generated with each loop.
%          means: This is a single column array with 3 layers and the same 
%          number of rows as seedMeans & contains the mean rgb values for 
%          each cluster. This is the final result of the loop.
% Author: Alex Verkerk

function [clusters, means] = KMeansRGB(A,seedMeans,maxIterations)
pos=1; % setting the count to 1
k=size(seedMeans,1);

% Preallocating tempmeans for speed. tempmeans is used to store each value
% generated by UpdateMeans successively, which allows comparing to previous
% values.
tempmeans=zeros(k,maxIterations,3); 

% Calling AssignToClusters & UpdateMeans based on seedMeans to create the
% first means & clusters.
clusters = AssignToClusters(A,seedMeans);
tempmeans(:,pos,:)=UpdateMeans(A,k,clusters);

% This for loop continues until either maxIterations is reached or until
% tempmeans no longer changes. This will continually update clusters &
% tempmeans based on the previous iteration. tempmeans is continually
% compared to the previous value of tempmeans until convergence is
% achieved.
for pos=2:maxIterations
    clusters = AssignToClusters(A,tempmeans(:,pos-1,:));
    tempmeans(:,pos,:)=UpdateMeans(A,k,clusters);
    % If statement to check if certain conditions have been met.
    if tempmeans(:,pos,:)==tempmeans(:,pos-1,:)
        break;
    elseif pos==maxIterations
        disp('Maximum number of iterations reached before convergence was achieved')
    end
end

% This sets means to the final position of the tempmeans.
means=tempmeans(:,pos,:);
end