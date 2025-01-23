function P = Heun(f, x1, x2, y) 
    h = 0.2;
    x = x1 : h : x2;
    
    for k = 1 : length(x) - 1
        yk = y(k) + h*f(x(k), y(k));
        fnew = (f(x(k), y(k)) + f(x(k + 1), yk)) / 2;
        y(k + 1) = y(k) + h*fnew;
    end

    figure(1);
    plot(x, y, 'm', 'LineWidth', 1.2);
    hold on;

    P = figure(1);
end