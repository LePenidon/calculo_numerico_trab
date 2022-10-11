x = csvread('SeO4.csv');
coluna1 = x(:,1);
coluna2 = x(:,2);
% plot(coluna1, coluna2, "m")


function w = pesos(x, sigma)

  n = size(x)(1);

  for i = 1:n
    t = abs(x - x(i)/sigma;
    psi = exp(-(t.^2));
    w = psi;
  endfor
end


function a  = mmqp(x, y, w, k)
  n = size(x)(1);
  W = diag(w);
  X = vander(x);
  X = X(:, n - k : n);

  a = ((X' * W * X) \ (X' * W * y))';
end


teste = mmqp(coluna1,coluna2,pesos(coluna1, 100),4);

f = polyval(teste, coluna1);

plot(coluna1, coluna2, "o", coluna1, f, '-')
