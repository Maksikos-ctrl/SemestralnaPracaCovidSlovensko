function [v] = vektorGenerator(velkost,krok)
% velkost=30
% krok=5
v = zeros(1,velkost)
c=1
for i=1:krok:velkost-(krok-1)
    v(1,i:i+krok-1)=c
    c=c+1;
    pause(0.2)
end
