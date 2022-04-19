function [] = isPrime(n)

flag = false;
for i = 2:sqrt(n)
    if mod(n, i) == 0
        flag = true;
        break
    end
end

if flag == false
    fprintf('Prime\n')
else
    fprintf('Not prime\n');
end

end