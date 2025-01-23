function I = Monte_Carlo2(f, a, b, c, d)
    n = 5000;

    x = a + (b - a)*rand(1, n);
    y = c + (d - c)*rand(1, n);
    s = 0;
    for k = 1 : n
        s = s + f(x(k), y(k));
    end 
    I = s * (d - c)*(b - a) / n;
end