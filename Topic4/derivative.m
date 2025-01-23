function d = derivative(f, x) 
    tol = 1e-6;
    d = (f(x + tol) - f(x)) ./ tol;
end