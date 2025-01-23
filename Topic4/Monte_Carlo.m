function I = Monte_Carlo(f, a, b)
    n = 5000;

    x = a + (b - a)*rand(1, n);
    s = 0;
    for k = 1 : n
        s = s + f(x(k));
    end 
    I = s * (b - a) / n;
end