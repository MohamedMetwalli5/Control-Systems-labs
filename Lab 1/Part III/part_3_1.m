clc;
clear;
%{
Use MATLAB to generate the first 100 terms in the sequence a(n) define recursively by
 a[n+1] = p * a[n] * (1 - a[n])
with p=2.9 and a(1) = 0.5.
After you obtain the sequence, plot the sequence.
%}


p = 2.9;
n = input("Enter n: ");

a = zeros(1, n);
a(1) = 0.5;
for i = 2:n
    a(i) = p * a(i-1) * (1 - a(i-1));
end

disp(a);
plot(a);


