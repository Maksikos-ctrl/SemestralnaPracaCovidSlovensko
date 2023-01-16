function [A] = matice (m,n,krok)
% m=10        
% n=15
% krok=5
A=zeros(m,n)
% A(1,1:5)=1
% A(2,:)=2
% A(3,5:end)=3
% A(6:10,6:10)=-1
% A(3:8,3:8)=5
c=1;
for i=1:krok:m-krok+1
    for j=1:krok:n-krok+1
    A(i:i+krok-1,j:j+krok-1)=c
    c=c+1;
    pause(0.5)
    end
end





