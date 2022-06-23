% Construct the fitting curve for the following dataset.
X = [-2 0 4];
F = [0 3 4];

n = length(X);

sum_e2xi = sum(exp(X.*2));
sum_exi = sum(exp(X));
sum_fiexi = sum(F.*exp(X));
sum_fi = sum(F);

A = [
    sum_e2xi sum_exi;
    sum_exi  n;
]

B = [
    sum_fiexi;
    sum_fi;
]

format rat, output = A\B

X_regress = [-2:0.1:4];
fx = @(x) output(1)*exp(x) + output(2);
plot(X, F, 'ro', X_regress, arrayfun(fx, X_regress), 'b');