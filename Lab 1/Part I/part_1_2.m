clc;

line_width = 0.9;
grid_line_style = ':';
grid_alpha = 1; %opacity

x=pi/2:pi/10:2*pi;
y=sin(x);
z=cos(x);

subplot(2,1, 1);
plot(x,y, ':+b', 'DisplayName', 'Sin(x)', 'LineWidth', 0.9);
title('Sin Curve')
xlabel('Angle')
ylabel('Sin(x)')
grid on
set(gca,'GridLineStyle',grid_line_style)
set(gca,'GridAlpha',grid_alpha)
set(gca,'LineWidth',line_width)
legend

subplot(2,1, 2);
plot(x,z, '--*r', 'DisplayName', 'Cos(x)', 'LineWidth', 0.8);
title('Sin Curve')
xlabel('Angle')
ylabel('Cos(x)')
grid on
set(gca,'GridLineStyle',grid_line_style)
set(gca,'GridAlpha',grid_alpha)
set(gca,'LineWidth',line_width)

legend