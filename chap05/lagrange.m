% lagrange(@(x) x + sin(x), 0, pi, 4);

function [result] = lagrange(fx, a, b, m)

xi = @(i) a + (i - 1)*(b - a)/m;
xj = @(j) a + (j - 1)*(b - a)/m;

result = 0;
for i = 1:(m + 1)
    product = @(x) 1;
    for j = 1:(m + 1)
        if i ~= j
            product = @(x) product(x).*(x - xj(j))/(xi(i) - xj(j));
        end
    end

    result = result + fx(xi(i))*integral(product, a, b);
end

end