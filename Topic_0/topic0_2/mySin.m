function sinx = mySin(x) 
    tmp = 1;
    sinx = 0;
    tol = 1e-9;
    n = 1;
    while abs(tmp) > tol
        tmp = (-1)^(n - 1) * x^(2*n - 1) / factorial(2*n - 1);
        sinx = sinx + tmp;
        n = n + 1;
    end
end