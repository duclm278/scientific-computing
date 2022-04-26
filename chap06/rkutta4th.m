% rkutta4th(@(y, x) y + x^2*y + 1, 1, 0, 0.1, 3);
% rkutta4th(@(y, x) x^(-2) + x^(-1)*y, -1, 1, 0.1, 10);

function [] = rkutta4th(dfy, y0, x0, h, n)

for i = 1:n
    k1 = h*dfy(y0, x0);
    k2 = h*dfy(y0 + 1/2*k1, x0 + 1/2*h);
    k3 = h*dfy(y0 + 1/2*k2, x0 + 1/2*h);
    k4 = h*dfy(y0 + k3, x0 + h);
    y1 = y0 + 1/6*(k1 + 2*k2 + 2*k3 + k4);
    x1 = x0 + h;

    fprintf('%f\t%f\n', x1, y1);

    y0 = y1;
    x0 = x1;
end