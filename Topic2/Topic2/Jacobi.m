function X = Jacobi(A, b, X0, N) 
    X = b;
    n = length(b);
    tol = 1e-9;
    for k = 1 : N
        for i = 1 : n
            sum = 0;
            for j = 1 : n
                if i ~= j
                    sum = sum + A(i,j)*X0(j);
                end
            end
            X0(i) = (b(i) - sum) / A(i,i);            
            if (norm(X0 - X) < tol) 
                X = X0;
                return;
            end
        end
        X = X0;
    end  
end