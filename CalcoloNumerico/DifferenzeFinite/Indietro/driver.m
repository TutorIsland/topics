% * Sviluppato da Tutor Island *
% --> Prenota le tue lezioni private per materie scientifiche: contact.tutorisland@gmail.com
% URL del video con la spiegazione riga per riga: https://www.youtube.com/watch?v=-2VmrvgufHk
% Iscritivi al Canale YouTube: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw

clear all;
close all;

h     =  0.1; % spaziatura tra elementi del dominio discreto
x_min = -3.0;
x_max =  2.0;
x = [x_min : h : x_max];
x_plot = x(2:end);

% valori della derivata numerica
dy_num_bw = dif_fin_bw(x, h);
%valori della derivata analitica
dy_an = 2*x_plot;

plot(x_plot, dy_num_bw, 'sb');
hold on;
plot(x_plot, dy_an, 'xr');
legend('numerica', 'analitica');
xlabel('x');
ylabel('dy/dx');
title("Differenze Finite all'indietro");