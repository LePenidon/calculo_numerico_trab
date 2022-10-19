format long
clear; clc; close all

x = csvread('SeO4.csv');

coluna1 = x(:,1);
coluna2 = x(:,2);

k = 3;

% ===============================================================================

col1_01 = x(1:140,1);
col2_01 = x(1:140,2);

c_1 = col1_01(70);
sigma_1 = 0.001;

pesos = exp(-((abs(col1_01-c_1)/sigma_1).^2));
tam_coluna1 = length(col1_01);
W = diag(pesos);
X = vander(col1_01);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_01));

f_1 = X*aprox;

% ===============================================================================

col1_02 = x(141:230,1);
col2_02 = x(141:230,2);

c_2 = col1_02(90);
sigma_2 = 0.001;

pesos = exp(-((abs(col1_02-c_2)/sigma_2).^2));
tam_coluna1 = length(col1_02);
W = diag(pesos);
X = vander(col1_02);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_02));

f_2 = X*aprox;

% ===============================================================================

col1_03 = x(231:280,1);
col2_03 = x(231:280,2);

c_3 = col1_03(35);
sigma_3 = 0.001;

pesos = exp(-((abs(col1_03-c_3)/sigma_3).^2));
tam_coluna1 = length(col1_03);
W = diag(pesos);
X = vander(col1_03);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_03));

f_3 = X*aprox;

% ===============================================================================

col1_04 = x(281:450,1);
col2_04 = x(281:450,2);

c_4 = col1_04(135);
sigma_4 = 0.00001;

pesos = exp(-((abs(col1_04-c_4)/sigma_4).^2));
tam_coluna1 = length(col1_04);
W = diag(pesos);
X = vander(col1_04);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_04));

f_4 = X*aprox;

% ==============================================================================

hold on
plot(coluna1, coluna2, 'DisplayName','Se04');

lgd_01 = strcat('c: ', num2str(c_1),"; ", "sigma: ", num2str(sigma_1));
plot(col1_01, f_1, '-', 'LineWidth', 3, 'DisplayName',lgd_01);

lgd_02 = strcat('c: ', num2str(c_2),"; ", "sigma: ", num2str(sigma_2));
plot(col1_02, f_2, '-', 'LineWidth', 3, 'DisplayName',lgd_02);

lgd_03 = strcat('c: ', num2str(c_3),"; ", "sigma: ", num2str(sigma_3));
plot(col1_03, f_3, '-', 'LineWidth', 3, 'DisplayName',lgd_03);

lgd_04 = strcat('c: ', num2str(c_4),"; ", "sigma: ", num2str(sigma_4));
plot(col1_04, f_4, '-', 'LineWidth', 3, 'DisplayName',lgd_04);
hold off

lgd = legend;
