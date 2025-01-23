function P = Euler(f, x1, x2, y) 
    h = 0.2;
    x = x1 : h : x2;
    
    for k = 1 : length(x) - 1
        y(k + 1) = y(k) + h*f(x(k), y(k));
    end

    figure(1);
    plot(x, y, 'r', 'LineWidth', 1.2);
    hold on;

    P = figure(1);
end