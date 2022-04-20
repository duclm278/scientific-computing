% simpson13(@(x) x^2 + x*sin(x), 0, pi);

function [result] = simpson13(fx, a, b)

h = (b - a)/2;

result = (h/3)*(fx(a) + 4*fx(a + h) + fx(b));

end