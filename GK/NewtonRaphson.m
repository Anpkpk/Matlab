function x = NewtonRaphson(f, x0, tol)
    x = x0 - f(x0) / derivative(f, x0);

    while f(x) > tol
        x = x0 - f(x0) / derivative(f, x0);
        x0 = x;
    end
end