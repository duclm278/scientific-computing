% Construct the fitting curve for the following dataset.
X = [-3 2 0 -2 6];
Y = [-2 -2 1 3 5]
F = [45 30 6 55 230];

n = length(X);

sum_xi2 = sum(X.^2);
sum_yi2 = sum(Y.^2);
sum_xi2yi2 = sum((X.^2).*(Y.^2));
sum_xi4 = sum(X.^4);
sum_yi4 = sum(Y.^4);
sum_fixi2 = sum(F.*X.^2);
sum_fiyi2 = sum(F.*Y.^2);

A = [
    sum_xi4 sum_xi2yi2;
    sum_xi2yi2  sum_yi4;
]

B = [
    sum_fixi2;
    sum_fiyi2;
]

format rat, output = A\B