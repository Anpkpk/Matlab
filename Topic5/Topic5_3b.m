clc; clear all; close all;

C = 2.5e-3; L = 4e-6; R = 19.2;
q0 = 3.75e-4; i0 = 6.4e-3; 

dq = @(t, q) [q(2); -R*q(2)*q(1)/(L*C)];

[t, q] = ode45(dq, [0, 0.05], [q0, i0]);
figure(1);
plot(t, q(:, 1)); hold on;

syms q(t);
Dq = diff(q, 1);
D2q = diff(q, 2);

qt = dsolve(L*D2q + R*Dq*q/C==0, q(0)==q0, Dq(0)==i0);
figure(1);
fplot(matlabFunction(qt), [0, 0.05], 'LineWidth', 1); hold on;