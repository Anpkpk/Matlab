function P = Lagrange(X, Y, x) 
    n = length(X);

    P = 0;
    for i = 1 : n
        L = 1;
        for j = 1 : n
            if i ~= j
                L = L * (x - X(j)) / (X(i) - X(j));
            end
        end
        P = P + L * Y(i);
    end

end