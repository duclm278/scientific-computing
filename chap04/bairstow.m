% bairstow([1 0 0 -1 -10], 0.1, 0.1, 0.001);

function [roots] = bairstow(coeffs, p, q, e)

i = 0;
while true
    [~, n] = size(coeffs);

    if n == 1
        break;
    elseif n == 2
        i = i + 1;
        roots(i) = -coeffs(2)/coeffs(1);
        break;
    end

    a = flip(coeffs);
    b = zeros(1, n);
    c = zeros(1, n);

    while true
        b(n) = a(n);
        b(n - 1) = a(n - 1) + p*b(n);
        for j = (n - 2):-1:1
            b(j) = a(j) + p*b(j + 1) + q*b(j + 2);
        end

        c(n) = b(n);
        c(n - 1) = b(n - 1) + p*c(n);
        for j = (n - 2):-1:1
            c(j) = b(j) + p*c(j + 1) + q*c(j + 2);
        end

        if n == 3
            c(4) = 0;
        end

        A = [
            c(3) c(4);
            c(2) c(3)
        ];

        B = [
            -b(2);
            -b(1)
        ];

        % delta = inv(A)*B;
        delta = A\B;

        if abs(delta(2)/q) < e && abs(delta(1)/p) < e
            p = p + delta(1);
            q = q + delta(2);

            i = i + 1;
            x1 = (p + sqrt(p^2 + 4*q))/2;
            roots(i) = x1;

            i = i + 1;
            x2 = (p - sqrt(p^2 + 4*q))/2;
            roots(i) = x2;
            break;
        else
            p = p + delta(1);
            q = q + delta(2);
        end
    end

    [coeffs, ~] = deconv(coeffs, [1 -x1]);
    [coeffs, ~] = deconv(coeffs, [1 -x2]);
end

end