% Find p(x) = ax^2 + bx + c that interpolates the dataset.
x0 = 4; y0 = 3;
x1 = 7; y1 = 4;
x2 = 9; y2 = 6;

A = [
    x0^2 x0 1;
    x1^2 x1 1;
    x2^2 x2 1;
];

B = [
    3;
    4;
    6;
];

format rat, output = A\B