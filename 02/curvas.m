% declaração do formato dos números e para limpar terminal
format long
clear; clc; close all

% ========================================================================================

P = [133 -163; 92 20; 35 -154; 10 125]; 

N = 1000;
Np = size(P, 1);
u = linspace(0, 1, N);
B = zeros(N, Np);

for i = 1:Np
    B(:,i) = nchoosek(Np-1,i-1).*u.^(i-1).*(1-u).^(Np-i); 
end

S = B*P;
x = S(:, 1);
y = S(:, 2);

hold

xlim([-200 400]) 
ylim([-200 400])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)

hold off

% =========================================================================================

% 34 154; 0 133; 10 124; 3 115; 10 105; 2 96; 15 92; 13 64; 70 39; 70 15; 117 25; 205 12; 315 60; 463 83; 495 125; 460 172; 450 105; 375 110; 372 172; 135 165; 113 100; 50 108; 34 154