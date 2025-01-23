function P = MidPoint(f, x1, x2, y)
    h = 0.2;
    x = x1 : h : x2;
    
    for k = 1 : length(x) - 1
        ym = y(k) + (h/2)*f(x(k), y(k));
        x(k) = x(k) + h/2;
        y(k + 1) = y(k) + (h/2)*f(x(k), ym);
    end

    figure(1);
    plot(x, y, 'g', 'LineWidth', 1.2);
    hold on;

    P = figure(1);
end