% calcola il valore numerico della derivata nei punti x
% usando il metodo delle differenze finite all'indietro
%
% x vettoriale
%
% (per il momento funziona solo con la funzione matematica parabola y = x^2) hard-coded
function [dy_num] = dif_fin_bw(x, h)
    n = length(x);
    dy_temp = zeros(1, n); % inizializzare i vettori da usare ottimizza il nostro codice
    % 1 2 3 4 5 6  k
    % x x x x x x  x
    % y y y y y y  dy_temp
    %   r r r r r  dy_num
    %   1 2 3 4 5  (indici del vettore di uscita)
    for k = 2 : n
        x_kp = x(k-1);
        x_k  = x(k);
        dy_temp(k) = ( f(x_k) - f(x_kp) ) / h;
    end
    dy_num = dy_temp(2:end);
end

% x scalare
% funzione matematica parabola
function [y] = f(x)
    y = x*x; % parabola
end