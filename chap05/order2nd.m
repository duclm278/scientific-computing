fx = @(x) sin(x);
actual = @(x) -sin(x);

x = pi/3;

for i = 1:6
    h = 1/10^i;
    dfx_2nd = (fx(x + h) + fx(x - h) - 2*fx(x))/h^2;
    fprintf('%f\t%f\t%f\n', h, actual(x), dfx_2nd);
end