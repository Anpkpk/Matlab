function coeffs = SplineCoeffs(X, Y)

    n = length(X) - 1; 
    h = diff(X);       
    a = Y(1:end-1);    

    A = zeros(n+1, n+1);
    b = zeros(n+1, 1);
    
    A(1, 1) = 1; 
    A(end, end) = 1; 

    for i = 2:n
        A(i, i-1) = h(i-1);
        A(i, i) = 2 * (h(i-1) + h(i));
        A(i, i+1) = h(i);
        b(i) = 6 * ((Y(i+1) - Y(i)) / h(i) - (Y(i) - Y(i-1)) / h(i-1));
    end
  
    c = A \ b;
    
    b = zeros(n, 1);
    d = zeros(n, 1);
    for i = 1:n
        b(i) = (Y(i+1) - Y(i)) / h(i) - h(i) * (2 * c(i) + c(i+1)) / 6;
        d(i) = (c(i+1) - c(i)) / (6 * h(i));
    end
    
    coeffs = struct('a', a, 'b', b, 'c', c(1:end-1), 'd', d, 'X', X(1:end-1));

    % Hiển thị hệ số đa thức trên từng đoạn
    disp('Hệ số spline trên từng đoạn:');
    for i = 1:length(coeffs.a)
        fprintf('Đoạn [%.2f, %.2f]: ', coeffs.X(i), X(i+1));
        fprintf('  a = %.2f', coeffs.a(i));
        fprintf('  b = %.2f', coeffs.b(i));
        fprintf('  c = %.2f', coeffs.c(i));
        fprintf('  d = %.2f\n', coeffs.d(i));
    end
end
