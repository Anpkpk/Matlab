clc; clear all; close all;

A = [2,-1, 1; 
     3, 1,-1;
     1,-3, 2];
B = A;

det(A)
Det(A, 3, 3)

A = Gauss_Jordan(A, 3, 3);
B = inversers(B, 3, 3);
r = rankS(B, 3, 3);

r, rank(A), A, B