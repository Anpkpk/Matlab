function c = bisectionMethod(f, a, b, tol) 
    c = (a + b) / 2;
    k = 0;
    while abs(f(c)) > tol 
        c = (a + b) / 2;
        if (f(a) * f(c) > 0)
            a = c;
        else 
            b = c;
        end
        k = k + 1;
    end
end