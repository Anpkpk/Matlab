clc; clear all; close all;

syms x;

tol = 1e-9;
x0 = 3.5;

y = exp(-x) - 10*x - 7;
fx = matlabFunction(y);

g1 = (exp(-x) - 7) / 10;    
g2 = -log(7 + 10*x);    % Loai

G1 = matlabFunction(g1);
G2 = matlabFunction(g2);     

x1 = bisectionMethod(fx, 2, 5, tol);    % Vo nghiem trong [2, 5]
x2 = fixed_Point(fx, G1, x0, tol);

x2, x1