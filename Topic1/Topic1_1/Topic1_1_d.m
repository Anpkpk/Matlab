clc; clear all; close all;

syms x;
y = exp(-x) - sin(x);
dy = diff(y);

f = matlabFunction(y);
df = matlabFunction(dy);

ezplot(y, [0, 10]);
grid on;

a = 0;
b = 10;
tol = 1e-9;

xx = linspace(1, 10, 100);
arr = [];

for i = 1 : length(xx)
    root = NewtonRaphsonMethod(f, df, xx(i), tol);
    if root <= b
        arr = [arr, root];
    end
end
arr = unique(round(arr, 6));
arr