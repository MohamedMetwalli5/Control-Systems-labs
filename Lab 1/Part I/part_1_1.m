clc;
clear;
A = magic(6);

fprintf('1) A = \n')
disp(A)

fprintf('fourth row = \n')
disp(A(4, :));

fprintf('--------------------------\n');
x = (0:0.1:1.1);
fprintf("x = \n");
disp(x);
y = (10:21);
fprintf("y = \n");
disp(y);
fprintf("2) x*y = \n")
disp(x.*y)
fprintf("y/x = \n")
disp(y./x)

fprintf('--------------------------\n');
r = randi([-8, 9], [4, 5]);
fprintf('3)')
disp(r)
