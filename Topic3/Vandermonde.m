function f = Vandermonde(X, Y)
    n = length(Y);

    P = eye(n);
    for i = 1 : n
        for j = 1 : n
            P(i, j) = X(i)^(n - j);
        end
    end
    P = P \ Y';

    f = poly2sym(P);
end