function d = derivativeY(f, x, y)
    d = (f(x, y + 1e-6) - f(x, y)) / (1e-6);
end