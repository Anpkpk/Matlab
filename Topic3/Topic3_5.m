clc; clear all; close all;

x = [0, 0.2, 0.4, 0.6 0.9, 1.2, 1.4, 1.8, 2];
y = [0.97, 0.69, 0.57, 0.46, 0.36, 0.31, 0.27, 0.21, 0.19];


X = x;
Y = 1 ./ y;

n = length(X);
A = diag(eye(n));

A = [A X'];

w = pinv(A'*A)*A'*Y'

f = @(x) 1 ./ (w(1) + x*w(2));

figure(1);
ezplot(f, [0, 2]); hold on;
plot(X, y, 'rs');

