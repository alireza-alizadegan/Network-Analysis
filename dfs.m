function dfs
global N N_N s list i visited P rch
P=zeros(1,N_N);
rch=zeros(N_N,N_N);
for s=N
    list=0;
    visited=zeros(1,N_N);
    i=1;
    dfs1(s);
end
