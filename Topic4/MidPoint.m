function I = MidPoint(f, a, b)
    I = 0;
    n = 5000;
    dx = (b - a) / n;

    for i = 0 : n
        I = I + dx*f(a + i*dx + dx / 2);
    end
end