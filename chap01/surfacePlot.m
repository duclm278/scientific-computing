x = 0:0.1:1;
y = 0:0.1:pi;

[A, B] = meshgrid(x, y);
f = 1./A.^2 + sin(B.^2);
surf(f, A, B);