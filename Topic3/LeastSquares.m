function P = LeastSquares(X, Y, x)
    n = length(X);
    A = eye(n);
    b = diag(A);

    for i = 1 : n
        for j = 1 : n
            A(i, j) = X(j)^(i - 1);
        end
        b(i) = A(i, :)*Y';
    end
    
    A = A*A';
    c = A \ b;

    P = 0;
    for i = 1 : n
        P = P + c(i)*x^(i - 1);
    end
end