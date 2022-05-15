% Input
M = 20; D = 0.01; dx = 0.1; dt = 0.01; T = 1; t = 0;

% Initial
for i = 1:M
    T(i) = 25;
end

% Main
while t < T
    % Formula 1
    for i = 1:M
        if i == 1
            F1(i) = (100 - 2*T(i) + T(i + 1))/dx^2;
        elseif i == M
            F1(i) = (T(i - 1) - 2*T(i) + 25)/dx^2;
        else
            F1(i) = (T(i - 1) - 2*T(i) + T(i + 1))/dx^2;
        end
    end

    % Formula 2
    for i = 1:M
        T(i) = T(i) + D*F1(i)*dt;
    end

    % Simulate
    X = 1:M; plot(X, T); hold on;
    % X = 1:M; plot(X, T); pause(0.1);

    % Update time
    t = t + dt;
end