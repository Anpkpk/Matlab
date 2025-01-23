clc; clear all; close all;

% ode45
dy = @(x,y) [y(2); (4*x^3 + 4)*sin(x).^2 - 2*y(1)];
[x, y] = ode45(dy, [0 2], [3 6]);

figure(1);
plot(x, y(:, 1)); hold on
plot(x, y(:, 2)); hold on

% dsolve
syms y(x);
Dy = diff(y);
D2y = diff(y, 2);

% dk ban dau
yt = dsolve(D2y+2*y==(4*x^3+4)*sin(x)^2, y(0)==3, Dy(0)==6);
dyt = diff(yt);
figure(1);
fplot(matlabFunction(yt), [0, 2], 'LineWidth', 1.5); hold on;
fplot(matlabFunction(dyt), [0, 2], 'LineWidth', 1.5); hold on;
hold on;

% dk bien
yt1 = dsolve(D2y+2*y==(4*x^3+4)*sin(x)^2, y(0)==4, Dy(2)==1);
dyt1 = diff(yt1);
figure(1);
fplot(matlabFunction(yt1), [0, 2], 'LineWidth', 1.5); hold on;
fplot(matlabFunction(dyt1), [0, 2], 'LineWidth', 1.5); hold on;
hold on;

