% lagrange2(@(x) x + sin(x), 0, pi, 4);

function [result] = lagrange2(fx, a, b, m)

xk = @(k) a + k*(b - a)/m;

result = 0;
for i = 0:m
    p = 1;
    for j = 0:m
        if i ~= j
            syms x;
            p = expand(p*(x - xk(j))/(xk(i) - xk(j)));
        end
    end

    result = result + fx(xk(i))*int(p, a, b);
end

result = double(result);

end