clc; clear all; close all;

A = [2 -12;
     1 -5];
X = [0; 1];

A = [7, -4, 2;
     16, -9, 6;
     8, -2, 5];
X = [0; 0; 1];

n = size(A, 1);

lamda = [];
V = [];

[l, v] = PowerMethod(A, X);
lamda = [lamda, l];
V = [V, v];

alpha = 0;
for k = 2 : n
    [w, v] = InversesPowerMethod(A - alpha.*eye(n), X);
    V = [V, v];
    l = w + alpha;  
    alpha = -5;
    lamda = [lamda, l];
end

[P, D] = eig(A);

P
diag(D)

V, lamda