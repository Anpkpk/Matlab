clc; clear all; close all;

fx1 = @(x) exp(-x) - 10 *x - 7;
fx2 = @(x) -(exp(-x) - 10 *x - 7);

ezplot(fx1, [0, 3]);
[x0, y0] = ginput(1);   grid on;

[xmin, ymin] = fminsearch(fx1, x0);
[xmax, ymax] = fminsearch(fx2, x0);

ymin, (-1)*ymax