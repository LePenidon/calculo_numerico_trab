% declaração do formato dos números e para limpar terminal
format long
clear; clc; close all

% 34 154; 0 133; 10 124; 3 115; 10 105; 2 96; 15 92; 13 64; 70 39; 70 15; 117 25; 205 12; 315 60; 463 83; 495 125; 460 172; 450 105; 375 110; 372 172; 135 165; 113 100; 50 108; 34 154


N = 1000;

% ========================================================================================
P = [135 -170; 90 -50; 35 -155]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% ========================================================================================

P = [35 -155; -25 -125 ; 11 -125]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [11 -125; -10 -110 ; 10 -109]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [10 -109; -24 -80 ; 16 -90]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [16 -90; -20 -40 ; 70 -40]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [70 -40; 50 30 ; 120 -26]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [120 -26; 190 10; 315 -60]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [315 -60; 500 -50; 485 -130]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [485 -130; 490 -165; 459 -172]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [459 -172; 415 -65; 375 -174]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [375 -174; 135 -170]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [60 -151; 90 -98; 107 -150]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [60 -151; 90 -208; 107 -150]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [395 -168; 419 -108; 438 -166]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
P = [395 -168; 419 -208; 438 -166]; 
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
xlim([-50 500])  
ylim([-200 100])

plot(x, y, 'LineWidth', 4); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 1); 
set(gca, 'FontSize', 16)
hold off

% =========================================================================================
