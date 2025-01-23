function bai1(A)
    % a, tinh vet cua matran
    sum = 0;
    for i = 1 : 5
        sum = sum + A(i, i);
    end
    disp('a, ');
    disp(sum);
    
    % b, Tong cac phan tu doi lap voi duong cheo chinh
    sum = 0;
    for i = 1 : 5
        sum = sum + A(6 - i, i);
    end
    disp('b, ');
    disp(sum);
    
    % c, Tao matran B tu A = thay doi cot 1 cua A
    %    boi vector V1 = (4, 8, 4, 4, 8),
    %    cot thu 3 = V2 = (2, 4, 2, 2, 4). Tinh det(A), det(B)
    
    V1 = [4, 8, 4, 4, 8];
    V2 = [2, 4, 2, 2, 4];
    B = A;
    B(:, 1) = V1;
    B(:, 3) = V2; 
    disp('c, ');
    disp(det(B));
    disp(det(A));
    
    % d, Tinh A + B, A ∗ B, A . ∗ B, B/A, A\B, B./A, A .\B.
    disp('d, ');
    disp(A + B);
    disp(A * B);
    disp(A .* B);
    disp(B / A);
    disp(A \ B);
    disp(A ./ B);
    disp(A .\ B);
end