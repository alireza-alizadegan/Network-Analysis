close all;clear all;clc
load('p') 

N_N=sqrt(size(A_d,1));
N_A=size(A_c,1);
N_P=size(A_c,2);
N_Psp=size(A_csp,2);

% T=zeros(N_N);
% T(24,4)=1;
% T(2,3)=1;
% T=1e-2*ones(N_N);

T=1.1e-2*abs(randn(N_N));
T(~rch)=0;
b_d=reshape(T,[N_N^2 1]);
% surf(T)

C=ones(N_A,1);
b_c=C;

[t,fval]=linprog(-ones(N_P,1),[A_c;A_d],[b_c;b_d],[],[],zeros(N_P,1),[]);
-fval/sum(T(:))*100

[t_sp,fval_sp]=linprog(-ones(N_Psp,1),[A_csp;A_dsp],[b_c;b_d],[],[],zeros(N_Psp,1),[]);
-fval_sp/sum(T(:))*100