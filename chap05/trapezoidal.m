% trapezoidal(@(x) x^2 + x*sin(x), 0, pi, 10);

function [result] = trapezoidal(fx, a, b, n)

h = (b - a)/n;

sum = 0;
for i = 1:(n - 1)
    sum = sum + fx(a + i*h);
end

result = (h/2)*(fx(a) + 2*sum + fx(b));

end