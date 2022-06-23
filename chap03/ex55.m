% Construct the fitting curve for the following dataset.
X = [-2 3 5 8 9];
F = [6.3 1.2 7.1 -2.8 -0.05];

n = length(X);

sum_sin2xi = sum(sin(X).^2);
sum_sinxi = sum(sin(X));
sum_fisinxi = sum(F.*sin(X));
sum_fi = sum(F);

A = [
    sum_sin2xi sum_sinxi;
    sum_sinxi  n;
]

B = [
    sum_fisinxi;
    sum_fi;
]

format rat, output = A\B

X_regress = [-2:0.1:9];
fx = @(x) sin(x)*output(1) + output(2);
plot(X, F, 'ro', X_regress, arrayfun(fx, X_regress), 'b');