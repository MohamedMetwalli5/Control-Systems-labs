function [y_t] = y(y0, zeta, omega, t, theta)
y_t = y0 ./ sqrt(1 - zeta) .* exp(-1 * zeta * omega .* t) .* sin(omega .* sqrt(1 - zeta^2) .* t + theta);
end
