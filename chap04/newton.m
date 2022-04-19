% newton(@(x) 3*x^3 + 2*x - 2, @(x) 9*x^2 + 2, 0.5, 0.001);

function [] = newton(fx, dfx, x0, e)

steps = 0;
currentError = 1;

while currentError >= e
    x = x0 - fx(x0)/dfx(x0);
    currentError = abs(fx(x));
    steps = steps + 1;

    fprintf('%f\t%f\t%d\n', x, currentError, steps);

    x0 = x;
end

end