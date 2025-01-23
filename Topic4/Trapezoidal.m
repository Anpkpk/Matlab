function I = Trapezoidal(f, a, b)
    n = 5000;
    I = 0;
    dx = (b - a) / n;
    for i = 1 : n
        S = f(a + i*dx) + f(a + (i + 1)*dx); 
        I = I + 1/2*(S)*dx;
    end
end