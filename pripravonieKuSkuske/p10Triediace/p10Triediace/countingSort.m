clc;
% x=[281.5 249 75 56 123.5 179 150 142 203 226 68 131 105];
x = [6 4 1 2 5 1];

disp(x);
bar(x);


n=length(x);
r=max(x);
C=zeros(1,r);
% [ 2 1 0 1 1 1]
for i=1:n
   C(x(i))=C(x(i))+1; 
end
C
v=zeros(1,n);

poz=1;
for i=1:r
   for j=1:C(i)
        v(poz)=i;
        poz=poz+1;
   end
end
v
