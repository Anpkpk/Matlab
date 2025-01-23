clc; clear all; close all;

x = [0.589, 0.550, 0.486, 0.443, 0.402];
y = [1.628, 1.640, 1.652, 1.668, 1.679];

X = x;
Y = y .* x.^4;

n = length(X);
A = diag(eye(n));

A = [A, (X'.^2), (X'.^4)];

w = pinv(A'*A)*A'*Y';

f = @(x) w(3) + w(2) ./ x.^2 + w(1) ./ x.^4;

figure(1);
g = ezplot(f, [min(x), max(x)]); hold on; grid on;
plot(x, y, 'r*');

f(0.720)
f = @(x) w(3) + w(2) ./ x.^2 + w(1) ./ x.^4 - 1.645;
x1 = fzero(f, 0.5)