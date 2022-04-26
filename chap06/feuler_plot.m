dfy = @(y, x) x^(-2) + x^(-1)*y;
y0 = -1;
x0 = 1;

% Range
a = 1;
b = 2;
% h = 0.01
h = 0.025;

% Acutal plot
actual = @(x) -(x.^2 + 1)./(2.*x);
X = a:h:b;
Y = actual(X);
plot(X, Y);

% FEuler plot
hold on;
for i = a:h:b
    y1 = y0 + dfy(y0, x0)*h;
    x1 = x0 + h;

    plot(x1, y1, 'r*')

    y0 = y1;
    x0 = x1;
end
hold off