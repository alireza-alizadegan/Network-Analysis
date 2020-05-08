function y=f_d(zeta,p)
global N_N
[I,J]=ind2sub([N_N N_N],zeta);
if I==p(1) && J==p(end)
    y=1;
else
    y=0;
end
