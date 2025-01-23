function x = GaussX(A, m, n)
    A = GaussSwap(A, m, n);
    
    for i = m:-1:1
        Sum = 0;
        for j = i+1:m
            Sum = Sum + A(i,j) * x(j);
        end
        x(i,1) = (A(i,n) - Sum) / A(i,i);
    end

end