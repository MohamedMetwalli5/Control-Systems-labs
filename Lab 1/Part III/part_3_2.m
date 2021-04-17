clc;
clear;
t = 0:0.1:10;
y0 = 0.15;
omega = sqrt(2);
theta = 0;

% Case 1:
zeta = 3 / (2 * sqrt(2));
y_1 = y(y0, zeta, omega, t, theta);

subplot(2,1,1);
plot(t,y_1);
title('y_0=0.15, \omega_n=\surd{2}, \zeta= 3 /(2\surd{2}), \theta=0');

% Case 2:
zeta = 1 / (2 * sqrt(2));
y_2 = y(y0, zeta, omega, t, theta);

subplot(2,1,2)
plot(t,y_2);
title('y_0=0.15, \omega_n=\surd{2}, \zeta= 1 /(2\surd{2}), \theta=0');
