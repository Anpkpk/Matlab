function P = Newton(X, Y, x)
    n = length(X);

    F = [Y', zeros(n, n - 1)];
    for j = 2 : n
        for i = j : n
            ts = F(i, j- 1) - F(i - 1, j - 1);
            ms = X(i) - X(i - j + 1);
            F(i, j) = ts / ms;
        end
    end

    a = diag(F);    % Rut ra ma tran duong cheo
    P = 0;
    for i = 1 : n
        N = 1;
        for j = 1 : i - 1
            N = N * (x - X(j));
        end
        P = P + a(i) * N;
    end
end