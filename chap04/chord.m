% chord(@(x) 3*x^3 + 2*x - 2, 0, 1, 0.001);

function [] = chord(fx, l, r, e)

currentError = 1;

while currentError >= e
    m = (l*fx(r) - r*fx(l))/(fx(r) - fx(l));
    currentError = abs(fx(m));

    fprintf('%f\t%f\t%f\t%f\t%f\t%f\n', l, m, r, fx(l), fx(m), fx(r));

    if fx(l)*fx(m) < 0
        r = m;
    elseif fx(m)*fx(r) < 0
        l = m;
    end
end

end