fx = @(x) sin(x);
expected = @(x) cos(x);

x = pi/3;

for i = 1:6
    h = 1/10^i;
    dfx_cd = (fx(x + h) - fx(x - h))/(2*h);
    fprintf('%f\t%f\t%f\n', h, expected(x), dfx_cd);
end