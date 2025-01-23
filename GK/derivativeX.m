function d = derivativeX(f, x0, y0)
    tol = 1e-9;
    d = (f(x0 + tol, y0) - f(x0, y0)) / tol;
end