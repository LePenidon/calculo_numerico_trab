% declaração do formato dos números e para limpar terminal
format long
clear; clc; close all

% x recebe os pontos da função a ser aproximada
x = csvread('SeO4.csv');

% separamos em colunas
coluna1 = x(:,1);
coluna2 = x(:,2);

% ordem dos polinomios para a aproximação
k = 3;

% ==================PRIMEIRA APROXIMAÇÃO========================================

% dominio da aproximacao
col1_01 = x(1:140,1);
col1_01 = col1_01 - 12;
col2_01 = x(1:140,2);

% c: ponto médio
c_1 = col1_01(70);
% sigma: ponderação dos pesos em relação ao c
sigma_1 = 0.001;

% cálculo da aproximação
pesos = exp(-((abs(col1_01-c_1)/sigma_1).^2));
tam_coluna1 = length(col1_01);
W = diag(pesos);
X = vander(col1_01);
X = X(:, tam_coluna1 - k : tam_coluna1);
aprox = ((X' * W * X) \ (X' * W * col2_01));
f_1 = X*aprox;

% ==================SEGUNDA APROXIMAÇÃO========================================

% dominio da aproximacao
col1_02 = x(141:230,1);
col1_02 = col1_02 - 12;
col2_02 = x(141:230,2);

% c: ponto médio
c_2 = col1_02(40);
% sigma: ponderação dos pesos em relação ao c
sigma_2 = 0.001;

% cálculo da aproximação
pesos = exp(-((abs(col1_02-c_2)/sigma_2).^2));
tam_coluna1 = length(col1_02);
W = diag(pesos);
X = vander(col1_02);
X = X(:, tam_coluna1 - k : tam_coluna1);
aprox = ((X' * W * X) \ (X' * W * col2_02));
f_2 = X*aprox;

% ==================TERCEIRA APROXIMAÇÃO========================================

% dominio da aproximacao
col1_03 = x(231:290,1);
col1_03 = col1_03 - 12;
col2_03 = x(231:290,2);

% c: ponto médio
c_3 = col1_03(60);
% sigma: ponderação dos pesos em relação ao c
sigma_3 = 0.001;

% cálculo da aproximação
pesos = exp(-((abs(col1_03-c_3)/sigma_3).^2));
tam_coluna1 = length(col1_03);
W = diag(pesos);
X = vander(col1_03);
X = X(:, tam_coluna1 - k : tam_coluna1);
aprox = ((X' * W * X) \ (X' * W * col2_03));
f_3 = X*aprox;

% ==================QUARTA APROXIMAÇÃO========================================

% dominio da aproximacao
col1_04 = x(290:330,1);
col1_04 = col1_04 - 12;
col2_04 = x(290:330,2);

% c: ponto médio
c_4 = col1_04(20);
% sigma: ponderação dos pesos em relação ao c
sigma_4 = 0.001;

% cálculo da aproximação
pesos = exp(-((abs(col1_04-c_4)/sigma_4).^2));
tam_coluna1 = length(col1_04);
W = diag(pesos);
X = vander(col1_04);
X = X(:, tam_coluna1 - k : tam_coluna1);
aprox = ((X' * W * X) \ (X' * W * col2_04));
f_4 = X*aprox;

% ==================QUINTA APROXIMAÇÃO========================================

% dominio da aproximacao
col1_05 = x(330:450,1);
col1_05 = col1_05 - 12;
col2_05 = x(330:450,2);

% c: ponto médio
c_5 = col1_05(60);
% sigma: ponderação dos pesos em relação ao c
sigma_5 = 0.001;

% cálculo da aproximação
pesos = exp(-((abs(col1_05-c_5)/sigma_4).^2));
tam_coluna1 = length(col1_05);
W = diag(pesos);
X = vander(col1_05);
X = X(:, tam_coluna1 - k : tam_coluna1);
aprox = ((X' * W * X) \ (X' * W * col2_05));
f_5 = X*aprox;

% ==================PLOTAR GRÁFICO========================================

hold on
plot(coluna1, coluna2, 'DisplayName','Se04', 'LineWidth', 2);

lgd_01 = strcat('c: ', num2str(c_1+12),"; ", "sigma: ", num2str(sigma_1));
plot(coluna1(1:140), f_1, ':g', 'LineWidth', 3, 'DisplayName',lgd_01);

lgd_02 = strcat('c: ', num2str(c_2+12),"; ", "sigma: ", num2str(sigma_2));
plot(coluna1(141:230), f_2, ':y', 'LineWidth', 3, 'DisplayName',lgd_02);

lgd_03 = strcat('c: ', num2str(c_3+12),"; ", "sigma: ", num2str(sigma_3));
plot(coluna1(231:290), f_3, ':r', 'LineWidth', 3, 'DisplayName',lgd_03);

lgd_04 = strcat('c: ', num2str(c_4+12),"; ", "sigma: ", num2str(sigma_4));
plot(coluna1(290:330), f_4, ':c', 'LineWidth', 3, 'DisplayName',lgd_04);

lgd_05 = strcat('c: ', num2str(c_5+12),"; ", "sigma: ", num2str(sigma_5));
plot(coluna1(330:450), f_5, ':m', 'LineWidth', 3, 'DisplayName',lgd_05);
hold off

lgd = legend;

% =========================================================================