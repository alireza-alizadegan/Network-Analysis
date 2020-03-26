function P_sp=sp(P)
k=1;
flag=0;
for i=1:nnz(P(:,1))
    for j=1:nnz(P(:,1))
        if numel(P(j,1:nnz(P(j,:))))<numel(P(i,1:nnz(P(i,:)))) && P(j,1)==P(i,1) && P(j,nnz(P(j,:)))==P(i,nnz(P(i,:)))
            flag=1;
        end
    end
    if flag==0
        P_sp(k,:)=P(i,:);
        k=k+1;
    end
    flag=0;
end
end
