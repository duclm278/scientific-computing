x1 = 1.2;
x2 = 0.5;
alpha = 1;
f = @(x1, x2) cos(x1^2 - 3*x2) + sin(x1^2 + x2^2);

gradient_x1 = @(x1, x2) 2*x1*(cos(x1^2 + x2^2) - sin(x1^2 - 3*x2));
gradient_x2 = @(x1, x2) 2*x2*cos(x1^2 + x2^2) + 3*sin(x1^2 - 3*x2);

h_x11 = @(x1, x2) -2*(2*x1^2*sin(x1^2 + x2^2) - cos(x1^2 + x2^2) + sin(x1^2 - 3*x2) + 2*x1^2*cos(x1^2 - 3*x2));
h_x12 = @(x1, x2) 6*x1*cos(x1^2 - 3*x2) - 4*x1*x2*sin(x1^2 + x2^2);
h_x21 = @(x1, x2) 6*x1*cos(x1^2 - 3*x2) - 4*x1*x2*sin(x1^2 + x2^2);
h_x22 = @(x1, x2) -4*x2^2*sin(x1^2 + x2^2) + 2*cos(x1^2 + x2^2) - 9*cos(x1^2-3*x2);

gradient_x = [gradient_x1(x1, x2); gradient_x2(x1, x2)]
H = [
    h_x11(x1, x2), h_x12(x1, x2);
    h_x21(x1, x2), h_x22(x1, x2)
]

u = [x1; x2] - inv(H)*gradient_x
