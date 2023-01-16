x = linspace(0,2*pi,100);

hold on
for i=1:2:8
    y = sin(x-pi/i);
    plot(x,y) 
    pause
end
hold off

plot(y)