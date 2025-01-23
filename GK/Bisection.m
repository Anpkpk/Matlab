function x = Bisection(f, a, b, tol)
    c = (a + b) / 2;

    while abs(f(c)) > tol
        c = (a + b) / 2;
        if f(a)*f(c) > 0
            a = c;
        else
            b = c;
        end
    end
    x = c;
end