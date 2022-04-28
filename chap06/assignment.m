dfy = @(y, x) -y + x + 1;
y0_inital = 1;
x0_inital = 0;

% Range
a = 0;
b = 1;
% h = 0.01
h = 0.025;

% Actual plot
fy = @(x) x + exp(-x);
X_actual= a:h:b;
Y_actual = fy(X_actual);

% FEuler plot
x0 = x0_inital;
y0 = y0_inital;
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
subplot(3, 1, 1);
plot(X_actual, Y_actual, 'b', X_feuler, Y_feuler, 'r.');
error_feuler = mean((Y_actual - Y_feuler).^2)

% RKutta2nd plot
x0 = x0_inital;
y0 = y0_inital;
X_rkutta2nd = x0;
Y_rkutta2nd = y0;
for i = a:h:(b - h)
    k1 = h*dfy(y0, x0);
    k2 = h*dfy(y0 + k1, x0 + h);
    y1 = y0 + 1/2*(k1 + k2);
    x1 = x0 + h;

    X_rkutta2nd = [X_rkutta2nd x1];
    Y_rkutta2nd = [Y_rkutta2nd y1];

    y0 = y1;
    x0 = x1;
end
subplot(3, 1, 2);
plot(X_actual, Y_actual, 'b', X_rkutta2nd, Y_rkutta2nd, 'r.');
error_rkutta2nd = mean((Y_actual - Y_rkutta2nd).^2)

% RKutta4th plot
y0 = y0_inital;
x0 = x0_inital;
X_rkutta4th = x0;
Y_rkutta4th = y0;
for i = a:h:(b - h)
    k1 = h*dfy(y0, x0);
    k2 = h*dfy(y0 + 1/2*k1, x0 + 1/2*h);
    k3 = h*dfy(y0 + 1/2*k2, x0 + 1/2*h);
    k4 = h*dfy(y0 + k3, x0 + h);
    y1 = y0 + 1/6*(k1 + 2*k2 + 2*k3 + k4);
    x1 = x0 + h;

    X_rkutta4th = [X_rkutta4th x1];
    Y_rkutta4th = [Y_rkutta4th y1];
    
    y0 = y1;
    x0 = x1;
end
subplot(3, 1, 3);
plot(X_actual, Y_actual, 'b', X_rkutta4th, Y_rkutta4th, 'r.');
error_rkutta4th = mean((Y_actual - Y_rkutta4th).^2)