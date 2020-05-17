% calcola il valore della derivata numerica
% tramite il metodo alle Differenze Finite Centrali
% nei punti raccolti nel vettore x

% * Sviluppato da Tutor Island *
% --> Prenota le tue lezioni private per materie scientifiche: contact.tutorisland@gmail.com
% URL del video con la spiegazione riga per riga: https://www.youtube.com/watch?v=DdE2vT-Fu3o
% Iscritivi al Canale YouTube: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw

function [dy_num] = diff_fin_cen(x, h)
    dy_num_temp = zeros(1, length(x));
    for k = 2 : length(x) - 1
        k_p = k - 1; % indice del punto precedente
        k_n = k + 1; % indice del punto successivo
        x_p = x(k_p);
        x_n = x(k_n);
        dy_num_temp(k) = (f(x_n) - f(x_p)) / (2.0*h);
    end
    dy_num = dy_num_temp(2:end-1);
end

% calcola il quadrato del numero x passato in argomento
function [y] = f(x)
    y = x*x; % caso semplice della parabola (hard-coded) -> TODO implementare altri casi
    % y = x*x*x; % caso della cubica (hard-coded) -> TODO implementare altri casi
    % y = x*x*x*x; % caso della quarta (hard-coded) -> TODO implementare altri casi
end