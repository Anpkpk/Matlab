clc; clear all; close all;

f = @(x, y, z) 1 ./ sqrt(x.^2 + y.^2 + (z - 2).^2);

a = -1; b = 1;
c = -1.5; d = 1.5;
m = -1; n = 1;

N = 5000;

x = a + (b - a)*rand(1, N);
y = c + (d - c)*rand(1, N);
z = m + (n - m)*rand(1, N);

s = 0;
for i = 1 : N
    s = s + f(x(i), y(i), z(i));
end
I1 = s * (d - c)*(b - a)*(n - m) / N;

% V = {x^2 + y^2 <= 1; -1 <= z <= 1}
% x = rcos(phi); y = rsin(phi); z = z
% Scau = 4*pi*R^2 (R = 1)

% x = r*sin(theta)*cos(phi)
% y = r*sin(theta)*sin(phi)
% z = r*cos(theta)
% J = -r^2*sin(theta)
% Stru = 2*pi*R^2 + 2*pi*R*h

g = @(r, phi, z) r ./ sqrt(r.^2 + (z - 2).^2);

r = 0 + 1*rand(1, N);
phi = 0 + 2*pi*rand(1, N);
z = -1 + 2*rand(1, N);

s = 0;
for i = 1 : N
    s = s + g(r(i), phi(i), z(i));
end
I2 = s*(4*pi) / N
% kq = 3.172042 = I2 * 2 ???
I2 = triplequad(@(r, phi, z) r ./ sqrt(r.^2 + (z - 2).^2), 0, 1, 0, 2*pi, -1, 1);
I2
