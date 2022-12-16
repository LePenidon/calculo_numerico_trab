% declaração do formato dos números e para limpar terminal
format long
clear; clc; close all

% constante da curva de Bezier
N = 1000;

% ========================================================================================
% pontos de controle
pontos = [135 -170; 90 -50; 35 -155]; 
% numero de pontos
num_pontos = size(pontos, 1);
% linearizacao do espaco
t = linspace(0, 1, N);
% matriz de Bezier
B = zeros(N, num_pontos);

% calculo das polinomios
for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

% calculo das curvas
C = B*pontos;
x = C(:, 1);
y = C(:, 2);

% plot do grafico
hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% ========================================================================================

pontos = [35 -155; -25 -125 ; 11 -125]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [11 -125; -10 -110 ; 10 -109]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [10 -109; -24 -80 ; 16 -90]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [16 -90; -20 -40 ; 70 -40]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [70 -40; 50 30 ; 120 -26]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [120 -26; 190 10; 315 -60]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [315 -60; 500 -50; 485 -130]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [485 -130; 490 -165; 459 -172]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [459 -172; 415 -65; 375 -174]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [375 -174; 135 -170]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [60 -151; 70 -108; 100 -108; 107 -150]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [60 -151; 70 -198; 100 -198; 107 -150]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [395 -168; 402 -126; 435 -126; 438 -166]; 
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
pontos = [395 -168; 402 -207; 435 -207; 438 -166];
num_pontos = size(pontos, 1);
t = linspace(0, 1, N);
B = zeros(N, num_pontos);

for i = 1:num_pontos
    B(:,i) = nchoosek(num_pontos-1,i-1).*t.^(i-1).*(1-t).^(num_pontos-i); 
end

C = B*pontos;
x = C(:, 1);
y = C(:, 2);

hold
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, pontos(:, 1), pontos(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
