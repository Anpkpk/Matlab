% Phuong phap cat tuyen
clc; clear all; close all;

syms x;
y = exp(-x) - sin(x);

a = 0;
b = 1;

f = matlabFunction(y);

tol = 1e-9;
x0 = a;
x1 = b;
x2 = x1;
k = 0;
while abs(f(x0)) > tol
    x2 = x1 - f(x1)*(x0 - x1) / (f(x0) - f(x1));
    x0 = x1;
    x1 = x2;
    k = k + 1;
end

x0, k