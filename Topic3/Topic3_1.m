clc; clear all; close all;

X = [-4.2, -2.4, -1.1, 2.1, 4.9];
Y = [29.1456, -25.5744, 65.2761, 51.2001, -11.6679];

x = 4;

P = Lagrange(X, Y, x)
P = Newton(X, Y, x)

h4 = polyfit(X, Y, 4);
xx = linspace(-4.2, 4.9, 200);
yy = polyval(h4, xx);

figure(1)
plot(xx, yy);
hold on;
plot(X, Y, 'sr');
