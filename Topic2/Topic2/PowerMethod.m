function [lamda, X] = PowerMethod(A, X) 
    N = 8;
    for k = 1 : N
        w = A * X;
        X = w / norm(w);
    end
    
    lamda = (X'*A*X) / (X'*X);
end