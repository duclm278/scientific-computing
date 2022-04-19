studentName = input('What''s your name? ');  % 'Duc'
studentGrade = input('What''s your grade? ');  % 10

if studentGrade >= 8.5
    fprintf('%s got A.\', studentName)
elseif studentGrade >= 7
    fprintf('%s got B.\n', studentName)
elseif studentGrade >= 5.5
    fprintf('%s got C.\n', studentName)
elseif studentGrade >= 4
    fprintf('%s got D.\n', studentName)
else
    fprintf('%s got F.\n', studentName)
end