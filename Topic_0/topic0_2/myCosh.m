function coshx = myCosh(x)
    n = 1;
    tmp = 1;
    coshx = 0;
    while(abs(tmp) > 1e-9)
        coshx = coshx + tmp;
        tmp = x^(2*n) / factorial(2*n);
        n = n + 1;
    end
end