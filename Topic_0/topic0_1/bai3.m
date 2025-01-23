function bai3()
    syms t;
    figure (1);
    x = 15 * cos(pi/2 * t - pi/2);
    v = -15 * pi/2 * sin(pi/2 * t - pi/2);
    a = (-pi/2)^2 * 15 * cos(pi/2 * t - pi/2);
    
    h = ezplot(x, [0 15]);
    hold on;
    set(h, 'color', 'r', 'linewidth', 1);
    
    g = ezplot(v, [0 15]);
    hold on;
    set(g, 'color', 'g', 'linewidth', 1);

    j = ezplot(a, [0 15]);
    hold on;
    set(j, 'color', 'b', 'linewidth', 1);
    
    legend('x = 15*cos(pi/2*t - pi/2)', 'v = -15*pi/2*sin(pi/2*t - pi/2)', 'a = (-pi/2)^2*15*cos(pi/2*t - pi/2)');

    figure(2);
    ezplot(v, x);
    grid("on");
end