function inv = inversers(A, m, n) 
    I = eye(m);
    M = [A I];

    M = Gauss_Jordan(M, m, 2*m);
    inv = M(:, m + 1 : 2*m);
end