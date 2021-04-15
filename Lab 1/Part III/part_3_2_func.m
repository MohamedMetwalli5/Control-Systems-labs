function [y] = part_3_2_func(y0, zeta, omega, t, theta)
y = y0 / sqrt(1 - zeta);
y = y * exp(-1 * zeta * omega * t);
y = y * sin(omega * sqrt(1 - zeta^2) * t + theta);
end

