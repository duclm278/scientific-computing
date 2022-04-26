function [days] = days_of_month(month)

switch month
    case 2
        days = [28, 29];
    case {1, 3, 5, 7, 8, 10, 12}
        days = 31;
    otherwise
        days = 30;
end

end