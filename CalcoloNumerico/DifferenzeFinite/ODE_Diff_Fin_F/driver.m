clear all;
close all;

h = 0.01;
x_min = 0.0;
x_max = 2.0;
x = [x_min:h:x_max]'; % griglia di calcolo

df = 2.0*x;

f_num = ode_diff_fin_f(df, h); % soluzione numerica
f_an  = x .* x; 

plot(x, f_num, 'hb');
hold on;
plot(x, f_an, 'xr');

legend('sol. num.', 'sol. an.', 'location', 'northwest');
xlabel('x');
ylabel('f(x)');
title("ODE: f'(x) = x ; f(0) = 0");

print('ode_plot', '-dpng');