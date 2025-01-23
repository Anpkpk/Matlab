clc; clear all; close all;
% 
% f = @(x, y) sin(x)^2 + sin(y)^2 - 1;
% g = @(x, y) 4*x*y + 0.1*x + 0.2*y - 1;
% 
% a = 0;
% b = 2;
% 
% x0 = 1;
% y0 = 2;
% 
% x1 = 1; y1 = 1;
% k = 0;
% 
% while k < 9
%     dfx = derivativeX(f, x0, y0);
%     dfy = derivativeY(f, x0, y0);
% 
%     dgx = derivativeX(g, x0, y0);
%     dgy = derivativeY(g, x0, y0);
% 
%     f0 = f(x0, y0);
%     g0 = g(x0, y0);
% 
%     J = [dfx, dfy; 
%          dgx, dgy];
% 
%     x1 = x0 - (g0*dfy - f0*dgy) / det(J);
%     y1 = y0 - (f0*dgx - g0*dfx) / det(J);
% 
%     x0 = x1;
%     y0 = y1;
% 
%     k = k + 1;
% end
% k, x1, y1
% f(x1, y1)
% g(x1, y1)

% Định nghĩa hệ phương trình phi tuyến
f1 = @(x, y) sin(x)^2 + sin(y)^2 - 1;
f2 = @(x, y) 4*x*y + 0.1*x + 0.2*y - 1;

% Sai số cho phép
tolerance = 1e-9;

% Khởi tạo giá trị ban đầu cho x và y
x = 1;
y = 1;

% Hàm lặp Newton-Raphson để cập nhật x và y
max_iterations = 1000;
for i = 1:max_iterations
    % Tính giá trị của hàm tại x và y hiện tại
    F = [f1(x, y); f2(x, y)];
    
    % Tính đạo hàm riêng phần của f1 và f2
    J = [2*sin(x)*cos(x), 2*sin(y)*cos(y); 
         4*y + 0.1, 4*x + 0.2]; % Ma trận Jacobian
     
    % Cập nhật (x, y) mới
    delta = -J \ F;
    x = x + delta(1);
    y = y + delta(2);
    
    % Kiểm tra nếu sai số nhỏ hơn sai số cho phép
    if norm(delta) < tolerance
        break;
    end
end

% Hiển thị kết quả
fprintf('Nghiệm của hệ phương trình là x = %.9f, y = %.9f\n', x, y);
