% secant(@(x) 3*x^3 + 2*x - 2, 0.5, 1, 0.001);

function [] = secant(fx, x0, x1, e)

steps = 0;
currentError = 1;

while currentError >= e
    dfx1 = (fx(x1) - fx(x0))/(x1 - x0);

    x = x1 - fx(x1)/dfx1;
    currentError = abs(fx(x));
    steps = steps + 1;

    fprintf('%f\t%f\t%d\n', x, currentError, steps);

    x0 = x1;
    x1 = x;
end

end