function y=f_c(a,p)
global inc
y=0;
for i=1:numel(p)-1
    if inc(p(i),a)==-1 && inc(p(i+1),a)==1
        y=1;
        break
    end
end
end