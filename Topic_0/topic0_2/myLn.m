function ln = myLn(x)
    disp('nhap |x| <= 1');
    n = 2;
    tmp = x;
    ln = 0;
    while (abs(tmp) > 1e-9)
        ln = ln + tmp;
        tmp = (-1)^(n - 1) * x^n / n;
        n = n + 1;
    end
end