function [v] = bubleSort(v)
% v = [6 4 1 2 5]

% v=[2 5 3 5 3 6 2 1 4 2 5 8 96 3 2 14 5 23 6 53 2]
% v=[2 5 3 5 3 6 2 1 4 2 5 8]
n = length(v);
count = 0;

for i=1:n
    zmena=0;
    for j=1:n-i
        if v(j)> v(j+1)
            v(j)
            v(j+1)
            temp = v(j);
            v(j)=v(j+1);
            v(j+1)=temp;
            zmena=1;
        end
       count=count+1; 
       bar(v)
       pause(0.5)
       v    
    end
    if zmena==0
         break
    end
end

count

end