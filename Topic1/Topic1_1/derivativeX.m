function d = derivativeX(f, x, y)
    d = (f(x + 1e-6, y) - f(x, y)) / (1e-6);
end