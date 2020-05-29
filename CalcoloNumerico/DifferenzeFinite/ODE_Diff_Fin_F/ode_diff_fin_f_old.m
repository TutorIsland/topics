% Calcola la funzione nei punti del dominio discreto
% a partire dai valori della derivata in tali punti.
% Usa il metodo alle Differenze Finite in Avanti.
function [f_num] = ode_diff_fin_f(df, h)
    %% imposto la matrice dei coefficienti A %%
    dp = -1*ones(1,5);
    Ap = diag(dp, 0);
    ds = ones(1,4);
    As = diag(ds, 1);
    A  = (1.0/h)*(Ap + As); % imposto le righe con le diagonali
    A(end,:) = 0;
    A(end,1) = h; % imposto la riga della condizione iniziale

    %% imposto il vettore dei termini noti b %%
    b = zeros(length(df), 1);
    b(1:4) = df(1:4);
    b(5) = 0; % valore della f per x = 0  (c.i.)

    f_num = A\b;
end