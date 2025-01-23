function d = derivative2(f, x) 
    tol = 1e-6;
    d = (f(x + tol) - 2.*f(x) + f(x - tol)) ./ (tol.^2);
end