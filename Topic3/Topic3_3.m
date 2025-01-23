clc; clear all; close all;

X = [0, 13, 24, 36, 40, 51, 63, 74, 82, 85];
Y = [0, 15, 34, 49, 27, 11, 19, 61, 37, 0];

xx = linspace(min(X), max(X), 1000);
sp = spline(X, Y, xx);

figure(1)
plot(xx, sp); hold on; grid on;
plot(X, Y, 'sr');


% (b) Tính tổng quãng đường
dx = diff(xx);
dy = diff(sp);

distance = sum(sqrt(dx.^2 + dy.^2)); % Tính tổng quãng đường

[hmax, xmax]= max(sp);
fprintf('Vi trí tàu xa nhất: %.2f km : %.2f km\n', xmax, hmax);
fprintf('Tổng quãng đường tàu thủy đi: %.2f km\n', distance);

SplineCoeffs(X, Y);
