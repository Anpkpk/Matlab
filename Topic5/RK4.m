function P = RK4(f, x1, x2, y)
    h = 0.2;
    x = x1 : h : x2;
    
    for k = 1 : length(x) - 1
        k1 = f(x(k), y(k));
        k2 = f(x(k) + h/2, y(k) + (h/2)*k1);
        k3 = f(x(k) + h/2, y(k) + (h/2)*k2);
        k4 = f(x(k) + h, y(k) + h*k3);

        y(k + 1) = y(k) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
    end

    figure(1);
    plot(x, y, 'b', 'LineWidth', 1.2);
    hold on;

    P = figure(1);
end