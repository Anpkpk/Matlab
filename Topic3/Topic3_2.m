clc; clear all; close all;

X = [-4.2, -2.4, -1.1, 2.1, 4.9];
Y = [29.1456, -25.5744, 65.2761, 51.2001, -11.6679];

h3 = polyfit(X, Y, 3);
h4 = polyfit(X, Y, 4);

xx = linspace(min(X), max(X), 200);

yy3 = polyval(h3, xx);
yy4 = polyval(h4, xx);

figure(1);
plot(xx, yy3, xx, yy4);
hold on;
plot(X, Y, 'sr');