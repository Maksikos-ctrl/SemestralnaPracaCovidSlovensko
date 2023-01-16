x = linspace(-5,5);

for i=1:5
    y = sin(x*i);
    f=figure(i)
    plot(x,y) ;
    saveas(f,['fig' num2str(i) '.jpg'])
    
end
    