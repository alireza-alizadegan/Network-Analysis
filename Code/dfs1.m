function dfs1(c)
global N  list i visited adj P rch
visited(c)=true;
list(i)=c;
i=i+1;

for n=N
    if adj(c,n)>0 && visited(n)==false;
        P(size(P,1),1:nnz(list)+1)=[list(1:nnz(list)) n];
        P(size(P,1)+1,:)=zeros(1,size(P,2));
        rch(list(1),n)=rch(list(1),n)+1;
        dfs1(n)
    end
end

visited(c)=false;
i=i-1;
list(i)=0;
end


