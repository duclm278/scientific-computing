function [x] = triangle(U, B)

[m, ~] = size(U);
x = zeros(m,1);
for k = m:-1:1
    x(k) = B(k)/U(k,k);
    i=(1:k-1)';
    B(i) = B(i) - x(k) * U(i,k);
end

end