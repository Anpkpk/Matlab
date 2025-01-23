function rank = rankS(A, m, n) 

    for k = 1 : m - 1
        for i = k + 1 : m
            if A(k, k) ~= 0
                p = A(i, k) / A(k, k);
                for j = k : n
                    A(i, j) = A(i, j) - p*A(k, j);
                end
            else
                Max = A(k, k);
                ind = k;
                for row = i : m
                    if abs(A(row, k)) > abs(Max)
                        Max = A(row, k);
                        ind = row;
                    end
                end

                if ind == k
                    break;
                end

                for col = k : n
                    tmp = A(k, col);
                    A(k, col) = A(row, col);
                    A(row, col) = tmp;
                end

                p = A(i, k) / A(k, k);
                for j = k : n
                    A(i, j) = A(i, j) - p*A(k, j);
                end
            end
        end
    end

    rank = 0; 
    for i = 1 : m
        for j = 1 : n
            if A(i, j) ~= 0
                rank = rank + 1;
                break;
            end
        end
    end
end