% Phuong phap day cung

clc; clear all; close all;

syms x; 
y = exp(-x) - sin(x);
f = matlabFunction(y);

a = 0;
b = 1;

tol = 1e-9;
c = a - f(a)*(b - a) / (f(b) - f(a));
k = 0;
c
while (abs(f(c)) > tol) 
    c = a - f(a)*(b - a) / (f(b) - f(a));
    if f(c)*f(a) > 0 
        a = c;
    else
        b = c;
    end
    k = k + 1;
end

c, k