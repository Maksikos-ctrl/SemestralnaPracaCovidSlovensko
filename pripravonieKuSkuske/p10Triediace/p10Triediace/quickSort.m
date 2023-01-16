function [y] = quickSort(x)

n = length(x);

if n<2
    y=x;
    return;
end

x1=[];
x2=[];

for i=1:n-1
    if x(n)>x(i)
        x1 = [x1 x(i)];
    else
        x2 = [x2 x(i)];
    end
end


y = [quickSort(x1) x(n) quickSort(x2)]
% bar([x1 x(n) x2])
% disp([x1 x(n) x2])
% pause
end

