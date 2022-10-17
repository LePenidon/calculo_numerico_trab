x = csvread('SeO4.csv');
coluna1 = x(:,1);
coluna2 = x(:,2);

c = 12.63;
sigma = 0.06;
k = 3;

pesos = exp(-((abs(coluna1-c)/sigma).^2));
tam_coluna1 = length(coluna1);
W = diag(pesos);
X = vander(coluna1);
X = X(:, tam_coluna1 - k : tam_coluna1);

aprox = ((X' * W * X) \ (X' * W * coluna2));

f = X*aprox;

aprox

hold 
plot(coluna1, coluna2, "o");
plot(coluna1, f, '-');