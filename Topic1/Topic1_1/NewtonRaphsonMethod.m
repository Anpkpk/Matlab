function x1 = NewtonRaphsonMethod(f, df, x0, tol)  
    x1 = x0; 
    while (abs(f(x0)) > tol)
        x1 = x0 - f(x0) / df(x0);
        x0 = x1;
    end
end