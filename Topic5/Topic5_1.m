clc; clear all; close all;

f = @(x, y) (y + 2)*cos(2*x - 2);
y = 8;
x1 = 0;
x2 = 10;

P = Euler(f, x1, x2, y);    % red
P = Heun(f, x1, x2, y);     % m
P = MidPoint(f, x1, x2, y); % green
P = RK4(f, x1, x2, y);      % blue
grid on;

syms y(x);
Dy = diff(y);
yx = dsolve(Dy==(y + 2)*cos(2*x - 2), y(0)==8)
ezplot(yx, [0 10], 1);
grid on;
hold on;

