function x = RegulaFalsi(f, a, b, tol)
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));

    while abs(f(c)) > tol
        c = (a*f(b) - b*f(a)) / (f(b) - f(a));
        if f(a)*f(c) > 0
            a = c;
        end
        if f(c)*f(b) > 0
            b = c;
        end
    end
    x = c;
end