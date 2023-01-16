function y = faktorial(N)
%vypocet faktorialu
    if N == 0
        y = 1;
    else
        y = N * faktorial(N-1);
        y
    end

%     faktorial(3)
%     y = 3 * faktorial(2);
%     faktorial(2)
%     y = 2 * faktorial(1);
%     faktorial(1)
%    y = 1 * faktorial(0);
%   faktorial(0);