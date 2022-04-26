fx = @(x) sin(x);
actual = @(x) cos(x);

x = pi/3;

for i = 1:6
    h = 1/10^i;
    dfx_bd = (fx(x) - fx(x - h))/h;
    fprintf('%f\t%f\t%f\n', h, actual(x), dfx_bd);
end