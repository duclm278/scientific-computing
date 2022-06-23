% Construct the fitting curve for the following dataset.
X = [1 3 4 5];
F = [2 4 3 1];

n = length(X);

sum_xi = sum(X);
sum_xi2 = sum(X.*X);
sum_fi = sum(F);
sum_xifi = sum(X.*F);

A = [
    sum_xi2 sum_xi;
    sum_xi  n;
];

B = [
    sum_xifi;
    sum_fi;
];

format rat, output = A\B