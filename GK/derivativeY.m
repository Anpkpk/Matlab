function d = derivativeY(f, x0, y0)
    tol = 1e-9;
    d = (f(x0, y0 + tol) - f(x0, y0)) / tol;
end