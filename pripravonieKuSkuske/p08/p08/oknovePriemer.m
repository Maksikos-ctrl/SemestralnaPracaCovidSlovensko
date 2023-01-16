function [B] = oknovePriemer(m,n,krok)
m=12;
n=10;
krok=3;

A=randi([0,255],m,n)
B=A;
% mean(mean(A(1:3,1:3)))
% mean(mean(A(1:3,4:6)))
% mean(mean(A(1:3,7:9)))


for i=1:krok:m-krok+1
   for j=1:krok:n-krok+1
       B(i:i+krok-1,j:j+krok-1)=mean(mean(A(i:i+krok-1,j:j+krok-1)));
   end
end

B