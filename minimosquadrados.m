x = csvread('SeO4.csv')
coluna1 = x(:,1);
coluna2 = x(:,2);
plot(coluna1, coluna2, "m")


##function w = pesos(x, teta)
##
##  n = lenght(x);
##
##  for i = 1:n
##    t = (x - x(i))/teta;
##    psi = e^(-(t^2));
##    w(i) = psi;
##  endfor
##end
##
##
##function a  = mmqp(x, y, w, k)
##  n = lenght(x);
##  W = diag(w);
##  X = vander(X);
##  X = X(:, n - k : n);
##  a = ((X' * W * X) \ (X' * W * y'))';
##end
