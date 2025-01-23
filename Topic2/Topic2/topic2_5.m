clc; clear all; close all;

A = [2 -12;
     1 -5];
X = [0; 1];

[lamda, X] = PowerMethod(A, X);
[lamdaMin, X2] = InversesPowerMethod(A, X);

lamda, X
lamdaMin, X2

[P D] = eig(A)
diag(D)
