% declaração do formato dos números e para limpar terminal
format long
clear; clc; close all

% ========================================================================================

P = [1 1; 2 2; 3 3; 40 5]; 
% P = [-8 -3 ;-8 -1;-1.1 -1;-1.65 -3.2]; 

N = 1000;
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

xlim([-15 40]) 
ylim([-5 5])

plot(x, y, 'LineWidth', 2); 
set(gca, 'FontSize', 16)

plot(x, y, P(:, 1), P(:, 2), 'x-', 'LineWidth', 3); 
set(gca, 'FontSize', 16)

hold off

% =========================================================================================


% function [] = mybez()
% %This function constructs a Bezier points using n input control points. 
% %
% % - Sagar Aiya (f2008149@bits-goa.ac.in)
% clear;
% clc;
% n = input('Enter the number of control points: '); 
% fprintf('\nNote: The order in which the points are inserted is crucial!\n\n');
% for i = 1:n
%     fprintf('Enter details for point(%d):\n',i);
    
%     P(1,i) = input('Enter the x coordinate: '); %x coordinate
%     P(2,i) = input('Enter the y coordinate: '); %y coordinate
%     P(3,i) = 0;                                 %all points in xy plane
    
%     fprintf('\n');
% end
% count = 1;
% div = 50; %number of segments of the curve (Increase this value to obtain a
%           %smoother curve
% for u = 0:(1/div):1
%     sum = [0 0 0]';
%     for i = 1:n
%         B = nchoosek(n,i-1)*(u^(i-1))*((1-u)^(n-i+1)); %B is the Bernstein polynomial value
%         sum = sum + B*P(:,i);
%     end
%     B = nchoosek(n,n)*(u^(n));
%     sum = sum + B*P(:,n);
%     A(:,count) = sum; %the matrix containing the points of curve as column vectors. 
%     count = count+1;  % count is the index of the points on the curve.
% end
% for j = 1:n %plots the points
%     plot(P(1,j),P(2,j),'*');
%     hold on;
% end
% p1 = P(:,1);
% %draws the characteristic polygon describing the bezier curve
% for l = 1:n-1
%     p2 = P(:,l+1)';
%     lineplot(p1,p2); %function the plots a line between two points.
%     p1 = p2;
% end
% %plotting the curve
% x = A(1,:);
% y = A(2,:);
% plot(x,y);
% axis equal;
% end
% %function definitions
% function [] = lineplot(A,B)
% x = [A(1) B(1)]; 
% y = [A(2) B(2)]; 
% plot(x,y,'--r'); %a dashed red  line 
% end 
