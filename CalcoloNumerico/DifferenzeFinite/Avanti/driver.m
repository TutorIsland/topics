% * Sviluppato da Tutor Island *
% --> Prenota le tue lezioni private per materie scientifiche: contact.tutorisland@gmail.com
% URL del video con la spiegazione riga per riga: https://www.youtube.com/watch?v=jYgrhPudsyw
% Iscritivi al Canale YouTube: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw

close all;
clear all;

h = 0.001;
x_min = -2;
x_max = 3;
% (TODO propria funzione matematica)

x = [x_min:h:x_max];
x_plot = x(1:end-1);

n_dy = diff_fin_av(x, h); % derivata numerica
an_dy = 2 .* x_plot; % derivata analitica (con la formula esatta)

plot(x_plot, n_dy, 'rx'); % grafico della derivata numerica
hold on;
plot(x_plot, an_dy, 'bd');% grafico della derivata analitica

grid on;
xlabel('x');
ylabel('dy/dx');
title('Differenze Finite in Avanti');
legend('Numerica', 'Analitica');