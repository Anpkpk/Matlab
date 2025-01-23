clc; clear all; close all;

f = @(x) log(x)^2 - x^2 + 2*x + 3;

tol = 1e-9;
a = 1;
b = 5;
xx = linspace(a, b, 1000);

% g1 = @(x) -log(sin(x));
% 
% g2 = @(x) asin(exp(-x));

figure(1)
g = ezplot(f, [a b]);
grid on;
hold on;

% x = RegulaFalsi(f, a, b, tol)
% x = Secant(f, a, b, tol)
% x = Bisection(f, a, b, tol)
% x = NewtonRaphson(f, a, tol)
% x = FixedPoint(f, g2, 0.5, tol);

% min
[x0 y0] = ginput(1);
[xmin fmin] = fminsearch(f, x0);
fmin, xmin

% max
fx = @(x) -(log(x)^2 - x^2 + 2*x + 3);
[xmax fmax] = fminsearch(fx, x0);
(-1)*fmax, xmax



