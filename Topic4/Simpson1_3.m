function I = Simpson1_3(f, a, b)
    n = 5000;
    dx = (b - a) / (2*n);
    I = 0;
    for i = 1 : 2 : 2*n - 1
        S = f(a + i*dx) + 4*f(a + (i + 1)*dx) + f(a + (i + 2)*dx);
        I = I + 1/3*S*dx;
    end
end