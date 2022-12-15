format long
clear; clc; close all

P = [-8 -3 ;-8 -1;-1.1 -1;-1.65 -3.2]; N = 1000;
Np = size(P, 1);
u = linspace(0, 1, N);
B = zeros(N, Np);
for i = 1:Np
B(:,i) = nchoosek(Np-1,i-1).u.^(i-1).(1-u).^(Np-i); end
S = B*P;
x = S(:, 1);
y = S(:, 2);
hold on xlim([-15 40]) ylim([-5 5])
plot(x, y, 'LineWidth', 2); set(gca, 'FontSize', 16)
plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 2); set(gca, 'FontSize', 16)