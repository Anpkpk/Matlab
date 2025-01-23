clc; clear all; close all;

% f = @(x, y) y.^3 .* exp(y) ./ (x.^2 + y.^2);

a = 0;  b = 1;
c = -1; d = 2;
n = 5000;

% I1 = Monte_Carlo2(f, a, b, c, d)

% D = {x^2 + y^2 <= 2}
% {0 <= r <= sqrt(2); 0 <= phi <= pi*2}
% Stron = pi*R^2 (R = sqrt(2))
g = @(r, phi) sin(phi).^3.*exp(r.*sin(phi)) ./ r;

r = sqrt(2)*rand(1, n);
phi = 2*pi*rand(1, n);

s = 0;
for i = 1 : n
    s = s + g(r(i), phi(i));
end 
I2 = s*(2*pi) / n
% kq = 3.657397; I2 = random ???

S = dblquad(@(x, y) sin(y)^3*exp(x*sin(y))./x, 0, sqrt(2), 0, 2*pi);
S