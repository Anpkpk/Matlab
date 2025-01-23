clc; clear all; close all;

A = [2, -4, 4;
     4, -8, 7;
     -1, 4, 3];

b = [-2; 2; 5];

A_B = [A b];

x = GaussX(A_B, 3, 4);

x1 = A \ b
x2 = pinv(A) * b