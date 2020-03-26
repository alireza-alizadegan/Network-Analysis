close all;clear all;clc
global N N_N inc adj P rch

load('p_recirc')
adj=xlsread('Model_recirc','adj');
inc=xlsread('Model_recirc','inc');

N=1:size(adj,1);
N_N=numel(N);
A=1:size(inc,2);
N_A=numel(A);

% tic;dfs;toc

N_P=nnz(P(:,1));

% tic
% for a=A
%     for i=1:N_P
%         A_c(a,i)=f_c(a,P(i,1:nnz(P(i,:))));
%     end
% end
% toc

% tic
% for i=1:N_N^2
%     for j=1:N_P
%         A_d(i,j)=f_d(i,P(j,1:nnz(P(j,:))));
%     end
% end
% toc

tic
P_sp=sp(P);
toc
N_Psp=size(P_sp,1);

tic
for a=A
    for i=1:N_Psp
        A_csp(a,i)=f_c(a,P_sp(i,1:nnz(P_sp(i,:))));
    end
end
toc

tic
for i=1:N_N^2
    for j=1:N_Psp
        A_dsp(i,j)=f_d(i,P_sp(j,1:nnz(P_sp(j,:))));
    end
end
toc
save('p_recirc','A_c','A_d','A_csp','A_dsp','rch')