dfy = @(y, x) -y + x + 1;
y0_inital = 1;
x0_inital = 0;

% Range
a = 0;
b = 1;
% h = 0.01
h = 0.025;

% Actual plot
actual = @(x) x + exp(-x);
X = a:h:b;
Y = actual(X);
plot(X, Y);
hold on;

% FEuler plot
y0 = y0_inital;
x0 = x0_inital;
for i = a:h:b
    y1 = y0 + dfy(y0, x0)*h;
    x1 = x0 + h;

    plot(x1, y1, 'r*')

    y0 = y1;
    x0 = x1;
end

% RKutta2nd plot
y0 = y0_inital;
x0 = x0_inital;
for i = a:h:b
    k1 = h*dfy(y0, x0);
    k2 = h*dfy(y0 + k1, x0 + h);
    y1 = y0 + 1/2*(k1 + k2);
    x1 = x0 + h;

    plot(x1, y1, 'g+')

    y0 = y1;
    x0 = x1;
end

% RKutta4th plot
y0 = y0_inital;
x0 = x0_inital;
for i = a:h:b
    k1 = h*dfy(y0, x0);
    k2 = h*dfy(y0 + 1/2*k1, x0 + 1/2*h);
    k3 = h*dfy(y0 + 1/2*k2, x0 + 1/2*h);
    k4 = h*dfy(y0 + k3, x0 + h);
    y1 = y0 + 1/6*(k1 + 2*k2 + 2*k3 + k4);
    x1 = x0 + h;

    plot(x1, y1, 'bo')

    y0 = y1;
    x0 = x1;
end

hold off