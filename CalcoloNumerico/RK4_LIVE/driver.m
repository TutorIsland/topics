close all;
clear all; % attenzione: pulisce tutte le variabili dichiarate prima

h = 0.5; % stepsize (passo)
t = [0:h:2]'; % griglia temporale sulla quale calcolare la soluzione numerica
N = length(t); % numero di punti nei quali calcolo la soluzione numerica
y = zeros(N,1); % vettore con la soluzione numerica ai vari t_n
y_an = 2.*exp(t); % soluzione analitica (corretta)

f = @(tt, yy)(yy);

y0 = 2; % c.i. (condizione iniziale)
y(1) = y0; % inserisco la condizione iniziale

for k = 2 : N;
    % valore della soluzione numerica in corrispondenza di t(k)
    y(k) = rk4(f, h, t(k-1), y(k-1));
end

hold on
grid on
title("Problema di Cauchy: y'(t)=y(t), y(0) = 2");
xlabel('t');
ylabel('y(t)');
plot(t, y_an, 'rx', 'markersize', 20);
plot(t, y, 'bo', 'markersize', 20);
legend('soluzione analitica', 'soluzione numerica (RK4)');
print('-dpng', 'confronto_an_RK4.png')
hold off