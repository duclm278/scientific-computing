% lagrange(@(x) x + sin(x), 0, pi, 4);

function [result] = lagrange(fx, a, b, m)

xk = @(k) a + k*(b - a)/m;

result = 0;
for i = 0:m
    product = @(x) 1;
    for j = 0:m
        if i ~= j
            product = @(x) product(x).*(x - xk(j))/(xk(i) - xk(j));
        end
    end

    result = result + fx(xk(i))*integral(product, a, b);
end

end