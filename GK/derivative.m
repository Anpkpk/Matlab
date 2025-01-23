function d = derivative(f, x0)
    tol = 1e-9;
    d = (f(x0 + tol) - f(x0))/(tol);
end