function MySpline(X, Y) 
    xx = linspace(min(X), max(X), 1000);
    sp = spline(X, Y, xx);

    figure(1);
    plot(xx, sp); grid on; 
    plot(X, Y, 'rs');
end