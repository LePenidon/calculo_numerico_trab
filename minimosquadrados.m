format long
x = csvread('SeO4.csv');

coluna1 = x(:,1);
coluna2 = x(:,2);

% ===============================================================================

col1_01 = x(1:150,1);
col2_01 = x(1:150,2);

c = col1_01(75);
sigma = 0.016;
k = 3;

pesos = exp(-((abs(col1_01-c)/sigma).^2));
tam_coluna1 = length(col1_01);
W = diag(pesos);
X = vander(col1_01);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * col2_01));
% aprox = flipud(aprox);

f_1 = X*aprox;
% f_1 = polyval(aprox,col1_01);

% ===============================================================================

% col1_02 = x(150:250,1);
% col2_02 = x(150:250,2);

% c = col1_02(55);
% sigma = 0.016;
% k = 3;

% pesos = exp(-((abs(col1_02-c)/sigma).^2));
% tam_coluna1 = length(col1_02);
% W = diag(pesos);
% X = vander(col1_02);
% X = X(:, tam_coluna1 - k : tam_coluna1);

% aprox = ((X' * W * X) \ (X' * W * col2_02));
% % aprox = flipud(aprox);

% f_2 = polyval(aprox,col1_02);

% ==============================================================================

hold 
plot(coluna1, coluna2, "-");
plot(col1_01, f_1, '-', 'LineWidth', 3);
% plot(col1_02, f_2, '-', 'LineWidth', 3);