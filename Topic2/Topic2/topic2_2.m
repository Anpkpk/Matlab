clc; clear all; close all;

A = [2, -2, 1;
     3, 1, -1;
     1, -3, 2];

B = [3; 7; 0];

A_B = [A B];

[m, n] = size(A_B);

x = GaussX(A_B, 3, 4);

x1 = A \ B
x2 = inv(A) * B
x