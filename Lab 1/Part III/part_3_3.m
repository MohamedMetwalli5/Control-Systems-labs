clc;
clear;


tf = 0:10:200;
tc = zeros(size(tf,2),1);
for i = 1:size(tf,2)
    tc(i) = c_to_f(tf(i));
end

disp(tc)
plot(tf,tc)
xlabel("Celsius")
ylabel("Fahrenheit")
text(100,212,'\leftarrow (100°C, 212°F)Water Boiling')


function [f] = c_to_f (c)
f = 9/5 * c + 32;
end
