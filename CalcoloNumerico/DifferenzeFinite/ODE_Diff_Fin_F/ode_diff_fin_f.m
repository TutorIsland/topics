% Calcola la funzione nei punti del dominio discreto
% a partire dai valori della derivata in tali punti.
% Usa il metodo alle Differenze Finite in Avanti.
function [f_num] = ode_diff_fin_f(df, h)
    %% imposto la matrice dei coefficienti A %%
    n = length(df);
    dp = -1*ones(1,n);
    Ap = diag(dp, 0);
    ds = ones(1,n-1);
    As = diag(ds, 1);
    A  = (1.0/h)*(Ap + As); % imposto le righe con le diagonali
    A(end,:) = 0;
    A(end,1) = 1; % imposto la riga della condizione iniziale

    %% imposto il vettore dei termini noti b %%
    b = zeros(n, 1);
    b(1:n-1) = df(1:n-1);
    b(n) = 0; % valore della f per x = 0  (c.i.)

    f_num = A\b;
end