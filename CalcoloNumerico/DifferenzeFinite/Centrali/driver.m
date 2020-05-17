% * Sviluppato da Tutor Island *
% --> Prenota le tue lezioni private per materie scientifiche: contact.tutorisland@gmail.com
% URL del video con la spiegazione riga per riga: https://www.youtube.com/watch?v=DdE2vT-Fu3o
% Iscritivi al Canale YouTube: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw

clear all;
close all;

% impostazione della griglia di punti
% in corrispondenza dei quali calcolare
% la derivata numerica
h     = 0.05;
x_min = -10.0;
x_max =  10.0;
x = [x_min:h:x_max];
x_plot = x(2:end-1);

dy_num = diff_fin_cen(x, h);
dy_an  = 2.0*x_plot; % parabola
% dy_an  = 3.0 * (x_plot .* x_plot); % cubica - ricorda il ' .* '  !!
% dy_an  = 4.0 * (x_plot .* x_plot .* x_plot); % quarta potenza - ricorda il ' .* '  !!

plot(x_plot, dy_num, 'db');
hold on;
plot(x_plot, dy_an, 'xr');
grid on;
title('Differenze Finite Centrali - Parabola');
xlabel('x');
ylabel('dy/dx');
legend('sol. numerica', 'sol. analitica', 'location', 'northwest');