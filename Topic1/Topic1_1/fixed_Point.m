function x1 = fixed_Point(f, G, x0, tol) 
    x1 = 0;
    while abs(f(x0)) > tol
        x1 = G(x0);
        x0 = x1;
    end
end