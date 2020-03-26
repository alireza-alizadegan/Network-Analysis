close all;clear all;clc
load('p')
load('T')

N_N=sqrt(size(A_d,1));
N_A=size(A_c,1);
N_P=size(A_c,2);
N_Psp=size(A_csp,2);

% T=zeros(N_N);
% T(2,3)=1;
% T(24,4)=.5;
% T(18,16)=1;
% T(23,15)=.5;
% T(14,7)=1;
% T(5,7)=.5;
% T(18,16)=1;
% T(23,15)=.5;
b_d=reshape(T,[N_N^2 1]);

C=ones(N_A,1);
b_c=C;

[t,fval]=linprog(-ones(N_P,1),[A_c;A_d],[b_c;b_d],[],[],zeros(N_P,1),[]);
SDCN=-fval/sum(T(:))*100

[t_sp,fval_sp]=linprog(-ones(N_Psp,1),[A_csp;A_dsp],[b_c;b_d],[],[],zeros(N_Psp,1),[]);
OSPF=-fval_sp/sum(T(:))*100

