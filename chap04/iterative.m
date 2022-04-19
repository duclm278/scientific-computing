% iterative(@(x) (2 - 3*x^3)/2, 0.5, 0.001);

function [] = iterative(gx, x0, e)

steps = 0;
currentError = 1;

while currentError >= e
    x = gx(x0);
    currentError = abs(x - x0);
    steps = steps + 1;

    fprintf('%f\t%f\t%d\n', x, currentError, steps);

    x0 = x;
end

end