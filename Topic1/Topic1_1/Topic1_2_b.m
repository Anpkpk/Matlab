clc; clear all; close all;

syms x;
y = log(x)^2 - x^2 + 2*x +3;

tol = 1e-9;

ans = NewtonRaphsonMethod(y, 1, 5, tol);
ans
