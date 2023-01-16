% v = [6 4 1 2 5];
v = randi([1,100],1,50)
n = length(v);

for i=1:n
    bar(v)
    pause(0.1)
    pozMin = i;
    for j=i+1:n
          if v(pozMin)>v(j)
             pozMin=j; 
          end
    end
    temp = v(i);  % i = 1 v(1)=6 temp = 6
    v(i)=v(pozMin); % v(1)=v(3) v(1)=1
    v(pozMin)=temp; % v(3)=6

    
end
v