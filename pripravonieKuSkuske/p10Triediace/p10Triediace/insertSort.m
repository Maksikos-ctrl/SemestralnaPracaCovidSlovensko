function [v] = insertSort(v,zobraz)
% v=[6 4 1 2 5]
% zobraz = 1
% v = randi([1,100],1,30);
% i=2 d=2 v(2)<v(1)
% i=2 d=1 

% i=3 d=3 v(3)<v(2)
% i=3 d=2 v(2)<v(1)
% i=3 d=1 

% i=4 d=4 v(4)<v(3)
% i=3 d=3 v(3)<v(2)
% i=3 d=2 v(2)<v(1)
% i=3 d=1 
for i=2:length(v) % size(v,2)
    d=i;
    while d>1 && v(d)<v(d-1) 
        temp=v(d);
        v(d)=v(d-1);
        v(d-1)=temp;
        d=d-1;
        if zobraz==1
            disp(v)
            bar(v)
            pause(0.1)
        end
    end   
end
