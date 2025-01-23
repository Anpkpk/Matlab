clc; close all; clear all;

f = @(x) sin(x) - x.^2.*cos(x) - exp(-x);
a = 0; b = 10;


X = linspace(a, b, 1000);
df = derivative(f, X);
ddf = derivative2(f, X);
figure(1) 
plot(X, f(X)); grid on; hold on;
plot(X, df); hold on;
plot(X, ddf); hold on;

% syms x;
% f = sin(x) - x.^2.*cos(x) - exp(-x);
% df = diff(f);
% ddf = diff(df);
% 
% figure(1)
% g = ezplot(f, [a b]); hold on;
% dg = ezplot(df, [a b]); hold on;
% ddg = ezplot(ddf, [a b]); hold on;

