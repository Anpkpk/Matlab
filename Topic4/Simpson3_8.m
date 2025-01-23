function I = Simpson3_8(f, a, b)
    I = 0;
    n = 5000;
    dx = (b - a) / (3*n);

    for i = 1 : 3 : 3*n - 2
        S = f(a + i*dx) + 3*f(a + (i + 1)*dx) + 3*f(a + (i + 2)*dx) + f(a + (i + 3)*dx);
        I = I + 3/8*S*dx;
    end
end