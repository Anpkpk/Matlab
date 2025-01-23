function Ans = Gauss(A, m, n)
    for k = 1 : m - 1
        for i = k + 1 : m
            if A(k, k) ~= 0
                p = A(i, k) / A(k, k);
                for j = k : n
                    A(i, j) = A(i, j) - p*A(k, j);
                end
            end
        end
    end

    Ans = A;
end