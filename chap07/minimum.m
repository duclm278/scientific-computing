% minimum(@(x) exp(x) + exp(-x) - 3*x^2 + x, 2, 4, 0.01);

function [minpoint, minvalue] = minimum(fx, a, b, e)

while abs(b - a) > e
    x1 = (a + b)/2 - e/2;
    x2 = (a + b)/2 + e/2;
    f1 = fx(x1);
    f2 = fx(x2);
    if f1 < f2
        b = x2;
    elseif f1 > f2
        a = x1;
    else
        a = x1;
        b = x2;
    end
end

minpoint = (a + b)/2
minvalue = fx(minpoint)

end