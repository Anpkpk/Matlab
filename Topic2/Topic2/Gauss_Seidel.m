function X = Gauss_Seidel(A, b, X0, N)
    m = length(b);
    X = b;
    tol = 1e-9;

    for k = 1 : N
        for i = 1 : m
            sum1 = 0;
            sum2 = 0;
            for j = 1 : m
                if j < i
                    sum1 = sum1 + A(i, j)*X(j);
                end
                if j > i
                    sum2 = sum2 + A(i, j)*X0(j);
                end
            end
            X0(i) = (b(i) - sum1 - sum2)/A(i, i);
            if norm(X0 - X) < tol
                X = X0;
                return;
            end
        end
        X = X0;
    end
end