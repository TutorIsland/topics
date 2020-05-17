% * Sviluppato da Tutor Island *
% --> Prenota le tue lezioni private per materie scientifiche: contact.tutorisland@gmail.com
% URL del video con la spiegazione riga per riga: https://www.youtube.com/watch?v=jYgrhPudsyw
% Iscritivi al Canale YouTube: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw

function [num_dy] = diff_fin_av(x, h)
    % creare il vettore di uscita (giuste dimensioni)
    num_dy = zeros(1, length(x)-1);
    % per ogni punto del vettore x
    % calcola la derivata numerica (diff. fin. av.)
    for k = 1 : length(x) - 1
        x_kk = x(k+1); % la x al punto successivo
        x_k  = x(k);   % la x al punto attuale
        num_dy(k) = ( f(x_kk) - f(x_k) ) / h;
    end
end

% funzione matematica
% (in seguito aggiungeremo la possibilita' di altre funzioni matematiche)
function [y] = f(x)
    y = x*x; % x^2
end