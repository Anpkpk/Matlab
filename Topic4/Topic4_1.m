clc; clear all; close all;
syms x;
y = cos(x) / (x^2 + 1);
a = 0;
b = 10;

I1 = int(y, a, b);
f = matlabFunction(y);

I2 = quad(f, a, b)

I3 = MidPoint(f, a, b)
I4 = Trapezoidal(f, a, b)
% MidPoint > Trapezoidal
I5 = Simpson1_3(f, a, b)
I6 = Simpson3_8(f, a, b)
% Simpson3_8 > Simpson1_3 
I7 = Monte_Carlo(f, a, b)