function  [means] = UpdateMeans(A,k,clusters)
i=1;

%i is the cluster number that is being chcked everytime in the while loop
while i<=k
    [row,column]=find(i==clusters);
    location=[row,column];
    if size(location,1)>1
        x=1;
        layers=1;
    end
    if size(location,1)==1
        x=0;
        for layer=1:3
            valueformean=A(location(1,1),location(1,2),layer);
            means(i,1,layer)=valueformean;
        end
    end
    while x<=size(location,1) && x~=0
        w=0;
        temporaryposition(1,1)=location(x,1);
        temporaryposition(1,2)=location(x,2);
        Valuesformeans(1,x)=A(temporaryposition(1,1),temporaryposition(1,2),layers);
            if x==size(location,1) && layers<=3
                means(i,1,layers)=mean(Valuesformeans,2);
            end
                if layers<3 &&x==size(location,1)
                    layers=layers+1;
                    x=1;
                    w=1;
                end
                    if x<=size(location,1) && w~=1
                        x=x+1;
                    end
    end
       
        
        
i=i+1;
   
end
end
