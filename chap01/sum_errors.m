sum = 0;

i = 1;
error = 0.000001;
while 1/i^2 >= error
    sum = sum + 1/i^2;
    i = i + 1;
end

fprintf('Sum: %f\n', sum);