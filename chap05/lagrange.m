% lagrange(@(x) x + sin(x), 0, pi, 4);

function [result] = lagrange(fx, a, b, m)

xi = @(i) a + i*(b - a)/m;
xj = @(j) a + j*(b - a)/m;

result = 0;
for i = 0:m
    product = @(x) 1;
    for j = 0:m
        if i ~= j
            product = @(x) product(x).*(x - xj(j))/(xi(i) - xj(j));
        end
    end

    result = result + fx(xi(i))*integral(product, a, b);
end

end