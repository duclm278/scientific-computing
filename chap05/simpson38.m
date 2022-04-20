% simpson38(@(x) (sin(x) + cos(x))*exp(2*x), 0, pi/3);

function [result] = simpson38(fx, a, b)

h = (b - a)/3;

result = (3*h/8)*(fx(a) + 3*fx(a + h) + 3*fx(a + 2*h) + fx(b));

end