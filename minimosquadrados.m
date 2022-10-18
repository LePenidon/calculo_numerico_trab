format long
clear; clc; close all

x = csvread('SeO4.csv');

coluna1 = x(:,1);
coluna2 = x(:,2);

% ===============================================================================

col1_01 = x(1:140,1);
col2_01 = x(1:140,2);

c = col1_01(70);
sigma = 0.001;
k = 3;

pesos = exp(-((abs(col1_01-c)/sigma).^2));
tam_coluna1 = length(col1_01);
W = diag(pesos);
X = vander(col1_01);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_01))

f_1 = X*aprox;

% ===============================================================================

col1_02 = x(141:230,1);
col2_02 = x(141:230,2);

c = col1_02(90);
sigma = 0.001;
k = 2;

pesos = exp(-((abs(col1_02-c)/sigma).^2));
tam_coluna1 = length(col1_02);
W = diag(pesos);
X = vander(col1_02);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_02));

f_2 = X*aprox;

% ===============================================================================

col1_03 = x(231:280,1);
col2_03 = x(231:280,2);

c = col1_03(35);
sigma = 0.001;
k = 2;

pesos = exp(-((abs(col1_03-c)/sigma).^2));
tam_coluna1 = length(col1_03);
W = diag(pesos);
X = vander(col1_03);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_03));

f_3 = X*aprox;

% ===============================================================================

col1_04 = x(281:450,1);
col2_04 = x(281:450,2);

c = col1_04(135);
sigma = 0.00001;
k = 2;

pesos = exp(-((abs(col1_04-c)/sigma).^2));
tam_coluna1 = length(col1_04);
W = diag(pesos);
X = vander(col1_04);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_04));

f_4 = X*aprox;

% ==============================================================================

hold 
plot(coluna1, coluna2, "");
plot(col1_01, f_1, '-', 'LineWidth', 3);
plot(col1_02, f_2, '-', 'LineWidth', 3);
plot(col1_03, f_3, '-', 'LineWidth', 3);
plot(col1_04, f_4, '-', 'LineWidth', 3);