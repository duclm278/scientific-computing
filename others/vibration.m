% Input
N = 20; C = 1; dx = 0.05; dt = 0.01; T = 5; t = 0; 

% Initial
for i = 1:N
    x = (i - 1)*dx;
    vt0(i) = sin(2*pi*x);
    vt1(i) = sin(2*pi*x);
end

% Main
while t < T
    for i = 1:N
        if i == 1 || i == N
            V(i) = 0;
        else
            V(i) = 2*vt1(i) - vt0(i) + (C*dt/dx)^2*(vt1(i - 1) - 2*vt1(i) + vt1(i + 1));
            vt0(i) = vt1(i);
            vt1(i) = V(i);
        end
    end

    % Simulate
    X = 1:N; plot(X, V); hold on;
    % X = 1:N; plot(X, psi); pause(0.1);

    % Update time
    t = t + dt;
end