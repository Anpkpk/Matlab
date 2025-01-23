function expx = myExp(x)
    n = 2;
    expx = 1;
    tmp = x;
    while (abs(tmp) > 1e-9)
        expx = expx + tmp;
        tmp = x^n / factorial(n);
        n = n + 1;
    end
end