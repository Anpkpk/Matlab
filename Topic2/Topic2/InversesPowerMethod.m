function [lamda, X] = InversesPowerMethod(A, X) 
    N = 15;
    for k = 1 : N
        w = pinv(A) * X;
        X = w / norm(w);
    end
    
    lamda = (X'*A*X) / (X'*X);
end