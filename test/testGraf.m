
g = animatedline('Color', 'g', 'LineWidth', 3);
axis([0,4*pi, -11])
x = linspace(0,4*pi, 1000);
y = sin(x);
for i=1:length(x)
    addpoints(h, x(k), y(k));
    drawnow
end