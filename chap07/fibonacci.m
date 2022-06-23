% fibonacci(@(x) exp(x) + exp(-x) - 3*x^2 + x, 2, 4, 100);

function [minpoint, minvalue] = fibonacci(fx, a, b, N)

F(1) = 1; F(2) = 1;
for i = 3:(N + 2)
    F(i) = F(i - 1) + F(i - 2);
end

for k = 0:N-1
    x1 = F(N - k)/F(N + 2 - k)*(b - a) + a;
    x2 = F(N + 1 - k)/F(N + 2 - k)*(b - a) + a;
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