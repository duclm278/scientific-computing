% Construct the fitting curve for the following dataset.
X = [1 2 3 4 5 6 7 8];
F = [1 8 27 64 125 216 350 560];

n = length(X);

sum_xi = sum(X);
sum_xi2 = sum(X.^2);
sum_xi3 = sum(X.^3);
sum_xi4 = sum(X.^4);
sum_fi = sum(F);
sum_fixi = sum(F.*X);
sum_fixi2 = sum(F.*X.^2);

A = [
    sum_xi4 sum_xi3 sum_xi2;
    sum_xi3 sum_xi2 sum_xi;
    sum_xi2 sum_xi  n;
];

B = [
    sum_fixi2;
    sum_fixi;
    sum_fi;
];

format rat, output = A\B

% fx = ax^2 + bx + c
fx = @(x) output(1)*x^2 + output(2)*x + output(3);

X_regress = [1:0.1:8];
plot(X, F, 'r.', X_regress, arrayfun(fx, X_regress), 'b');