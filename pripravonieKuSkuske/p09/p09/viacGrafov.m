m=5;
n=5;

x = linspace(-5,5);

for i=1:m*n
    y = sin(x*i);
    subplot(m,n,i)
    plot(x,y)
    title(['f = ' num2str(i)])
    xlabel('os x')
    ylabel('os y')
end

