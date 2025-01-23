function sinhx = mySinh(x)
    n = 1;
    tmp = x;
    sinhx = 0;
    while(abs(tmp) > 1e-9)
        sinhx = sinhx + tmp;
        tmp = x^(2*n + 1) / factorial(2*n + 1);
        n = n + 1;
    end
end