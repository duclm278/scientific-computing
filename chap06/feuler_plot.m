dfy = @(y, x) x^(-2) + x^(-1)*y;
y0 = -1;
x0 = 1;

% Range
a = 1;
b = 2;
% h = 0.01
h = 0.025;

% Actual plot
fy = @(x) -(x.^2 + 1)./(2.*x);
X_actual= a:h:b;
Y_actual = fy(X_actual);

% FEuler plot
X_feuler = x0;
Y_feuler = y0;
for i = a:h:(b - h)
    y1 = y0 + dfy(y0, x0)*h;
    x1 = x0 + h;

    X_feuler = [X_feuler x1];
    Y_feuler = [Y_feuler y1];
    
    y0 = y1;
    x0 = x1;
end
plot(X_actual, Y_actual, 'b', X_feuler, Y_feuler, 'r.');
error_feuler = mean((Y_actual - Y_feuler).^2)