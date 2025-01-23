function x0 = SecantMethod(f, a, b, tol) 
    x0 = a;
    x1 = b;
    x2 = x1;
    k = 0;
    while abs(f(x0)) > tol
        x2 = x1 - f(x1)*(x0 - x1) / (f(x0) - f(x1));
        x0 = x1;
        x1 = x2;  
    end
end