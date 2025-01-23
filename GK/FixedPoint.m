function x = FixedPoint(f, g, x0, tol)
    x1 = g(x0);

    while abs(f(x0)) > tol
        x1 = g(x0);
        x0 = x1;
    end
    x = x1;
end