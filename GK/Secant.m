function x = Secant(f, x0, x1, tol) 
    x2 = x0 - (x1 - x0)*f(x0)/(f(x1) - f(x0));

    while abs(f(x2)) > tol
        x2 = x0 - (x1 - x0)*f(x0)/(f(x1) - f(x0));
        x0 = x1;
        x1 = x2;
    end
    x = x1;
end