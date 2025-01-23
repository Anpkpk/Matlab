clc; clear all; close all;

f = @(x, y) sin(x)^2 + sin(y)^2 - 1;
g = @(x, y) 4*x*y + 0.1*x + 0.2*y - 1;

x0 = 1; y0 = 1;
k = 0;
x = [x0; y0];
while (k < 10)
    k = k + 1;
    F = f(x0, y0);
    G = g(x0, y0);

    dfx = derivativeX(f, x0, y0);
    dfy = derivativeY(f, x0, y0);

    dgx = derivativeX(g, x0, y0);
    dgy = derivativeY(g, x0, y0);

    Df = [dfx, dfy;
         dgx, dgy];
    
    Fx = [F; G];

    x1 = x - pinv(Df)*Fx;

    x = x1;
    x0 = x1(1);
    y0 = x1(2);
end

x