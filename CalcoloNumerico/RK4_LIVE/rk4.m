## Restituisce il valore numerico della soluzione al punto temporale successivo,
## usando il metodo numerico di Runge-Kutta 4.
##
## f: right-hand-side  ( f(t, y(t)) )
## h: stepsize (spaziatura costante della griglia temporale)
## t_n: valore del tempo al passo attuale
## y_n: valore della soluzione numerica in corrispondenza di t_n
##
## y_next: valore stimato per la y in corrispondenza di t_next (t_n_+_1)

function [y_next] = rk4(f, h, t_n, y_n)
    y_n1 = y_n;
    k1   = f(t_n, y_n1);

    y_n2 = y_n + (h/2.)*k1;
    k2   = f(t_n + h/2., y_n2);

    y_n3 = y_n + (h/2.)*k2;
    k3   = f(t_n + h/2., y_n3);

    y_n4 = y_n + h*k3;
    k4   = f(t_n + h, y_n4);

    y_next = y_n + h*( (1./6.)*k1 + (1./3.)*k2 + (1./3.)*k3 + (1./6.)*k4 );
end