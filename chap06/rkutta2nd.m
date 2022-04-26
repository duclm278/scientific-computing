% rkutta2nd(@(y, x) y + x^2*y + 1, 1, 0, 0.1, 3);
% rkutta2nd(@(y, x) x^(-2) + x^(-1)*y, -1, 1, 0.1, 10);

function [] = rkutta2nd(dfy, y0, x0, h, n)

for i = 1:n
    k1 = h*dfy(y0, x0);
    k2 = h*dfy(y0 + k1, x0 + h);
    y1 = y0 + 1/2*(k1 + k2);
    x1 = x0 + h;

    fprintf('%f\t%f\n', x1, y1);

    y0 = y1;
    x0 = x1;
end