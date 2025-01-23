clc; clearvars; close all;

syms q(t);
Dq = diff(q);
D2q = diff(q, 2);

L = 4e-6; C = 2.53e-3;
q0 = 3.75e-4; i0 = 6.4e-3;

qt = dsolve(L*D2q + q/C == 0, q(0)==q0, Dq(0)==i0);

figure(1);
fplot(matlabFunction(qt), [0, 0.05], 'LineWidth', 1); hold on;


dq = @(t, q) [q(2); -q(1)/(L*C)];

[t, q] = ode45(dq, [0, 0.05], [q0, i0]);
figure(1);
plot(t, q(:, 1)); hold on;