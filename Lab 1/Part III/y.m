function [y] = y(y0, zeta, omega, t, theta)
y = y0 ./ sqrt(1 - zeta) .* exp(-1 * zeta * omega .* t) .* sin(omega .* sqrt(1 - zeta^2) .* t + theta);
end

