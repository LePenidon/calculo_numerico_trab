x = csvread('SeO4.csv');
coluna1 = x(:,1);
coluna2 = x(:,2);
% plot(coluna1, coluna2, "m")


function w = pesos(x, c, sigma)
  
  % t = abs(x - c)/sigma;
  % psi = exp(-(t.^2));
  % w = psi;

  w = exp(-((abs(x-c)/sigma).^2));

end

function a  = mmqp(x, y, w, k)
  n = length(x);
  W = diag(w);
  X = vander(x);
  X = X(:, n - k : n);

  a = ((X' * W * X) \ (X' * W * y));
end

c = 12.66;
sigma = 0.05;
k = 2;

aprox = mmqp(coluna1,coluna2,pesos(coluna1, c, sigma), k);

% f = polyval(aprox, coluna1);

n = length(coluna1);
X = vander(coluna1);
X = X(:, n - 2 : n);

f = X*aprox;

aprox

hold 
plot(coluna1, coluna2, "o");
plot(coluna1, f, '-');