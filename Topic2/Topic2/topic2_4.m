clc; clear all; close all;

A = [5 -2 3; 
     -3 9 1;
     2 -1 -7];

b = [-1; 2; 3];

X0 = [0;0;0];

X = Jacobi(A, b, X0, 8);
X = Gauss_Seidel(A, b, X0, 8);

X
A \ b