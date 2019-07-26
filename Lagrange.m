function [yEstimated] = Lagrange(XMatrix,YMatrix, xEstimate)

nom=ones(1,length(XMatrix));
denom=ones(1,length(XMatrix));

for i=1:length(XMatrix)
    for j=1:length(XMatrix)
        if i~=j
            nom(i)=nom(i)*(xEstimate-XMatrix(j));
            denom(i)=denom(i)*(XMatrix(i)-XMatrix(j));
        end
    end
end


L=YMatrix.*(nom./denom);
yEstimated=sum(L);


end

