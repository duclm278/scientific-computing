% feuler(@(y, x) y + x^2*y + 1, 1, 0, 0.1, 3);
% feuler(@(y, x) x^(-2) + x^(-1)*y, -1, 1, 0.1, 10);

function [] = feuler(dfy, y0, x0, h, n)

for i = 1:n
    y1 = y0 + dfy(y0, x0)*h;
    x1 = x0 + h;

    fprintf('%f\t%f\n', x1, y1);
    
    y0 = y1;
    x0 = x1;
end