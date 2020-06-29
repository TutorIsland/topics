clear all;
close all;

z_min = 0;
z_max = 1;
L = z_max - z_min;
z = linspace(z_min, z_max, 6);
h = z(2) - z(1); % spaziatura (costante) tra i punti della griglia
g1 = z(end) + h; % ghost point 1
g2 = g1 + h; % ghost point 2
z_ghost = [z g1 g2];
n = size(z, 2);

% impostazione delle caratteristiche meccaniche, geometriche e di carico lungo l'asse della trave
E_const = 1.;
A_const = 1.;
p_const = 0.;
% nota: e' necessario specificare caratteristiche meccaniche, geometriche e di carico distribuito anche oltre il dominio dell'asta
E = zeros(size(z)+2) .+ E_const;
A = zeros(size(z)+2) .+ A_const;
p = zeros(size(z)+2) .+ p_const;
N = 1.; % forza assiale all'estremo destro, pari ad 1

% la diagonale principale della matrice
K_diag = zeros(1, n+2);
for id = 1 : n
    K_diag(id) = ( (E(id) - E(id+1))*A(id) )  +  ( E(id)*(A(id)-A(id+1)) )  +  ( E(id)*A(id) );
end

% la diagonale superiore a quella principale
K_super = zeros(1, n+1);
for id = 1 : n
    K_super(id) = ( (E(id+1) - E(id))*A(id) )  +  ( E(id)*(A(id+1) - A(id)) )  -  ( 2.0*E(id)*A(id) );
end

% la diagonale sopra la diagonale sopra la diagonale principale
K_super_super = zeros(1, n);
K_super_super = E(1:n).*A(1:n);

% costruisco la matrice intera
K_ghost = zeros(n+2); % n x n
K1 = diag(K_diag, 0);  % TODO T.I. spiegare come funziona 'diag'
K2 = diag(K_super, 1);
K3 = diag(K_super_super, 2);
% ricorda di MOLTIPLICARE K per 1/h^2 !!!!!
K_ghost = ( 1.0/(h^2) ) .* (K1 + K2 + K3);  % TODO T.I. spiegare il  '.*'

% K_ghost = zeros(n+2);
% K_ghost(1:n,1:n) = K;

% creo il vettore dei termini noti b
% b = zeros(size(z));
% b(1:n) = p(1:n);

b_ghost = zeros(1,n+2);
b_ghost(1:n) = p(1:n);

% la sottomatrice 2x2 nell'angolo in basso a destra di K_ghost e gli ultimi 2 elementi di b_ghost li lascio per le condizioni ausiliarie
% imposto le condizioni ausiliarie (c.a.):
% in z = 0 : u(0) = 0
K_ghost(n+1,1) = 1; % uso la riga n+1 per la prima c.a.
b_ghost(n+1) = 0;
% in z = L : u'(L) = N/(EA)
K_ghost(n+2,n:n+1) = [-1 1]; % uso la riga n+2 per la seconda c.a. (in MATLAB e' possibile assegnare direttamente sottomatrici)
b_ghost(n+2) = (h*N) / (E(n)*A(n)); % nota: MATLAB e' case-sensitive: 'n' != 'N'

% calcolo gli spostamenti soluzione
u_ghost = K_ghost \ b_ghost'; % attenzione al vettore colonna!

u = u_ghost(1:n); % non considera i 2 punti 'fantasma'
% plot per le soluzioni
ff = figure(1);
p1h = plot(z, u, 'hb'); % plot soluzione numerica
set(p1h, 'markersize', 12) % imposto una dimensione maggiore dei marker della soluzione numerica per renderli piu' visibili

% test
u_atteso = ( N .* z ) ./ ( E(1:n) .* A(1:n) );
hold on;
plot(z, u_atteso, 'dr'); % plot soluzione analitica

% aggiungo i dettagli del plot
title('Trave di Eulero-Bernoulli - Linea Elastica Assiale (Incastro, Estremo Libero)');
set(get(gca, 'XLabel'), 'String', 'z (ascissa lungo l''asse della trave)');
set(get(gca, 'YLabel'), 'String', 'u (spostamento assiale)');
legend('differenze finite', 'soluzione analitica');
% specifico i dettagli meccanici, geometrici e di carico in un box a parte
% TODO sprintf to string, al posto di inserire A = 1, etc. hard-coded
dettagli = {'  A = 1', '  E = 1', '  p = 0', '  u(0) = 0', '  N(L) = 1'}; % questo e' un cell array: mi permette di andare a capo nel testo del box
dim = [0.2 0.5 0.08 0.18]; % x0, y0, width, height del box annotazioni
% annotation('textbox', dim, 'String', dettagli, 'FitBoxToText', 'on');
% ha = annotation('textbox', dim, 'String', dettagli, 'backgroundcolor', [0.9, 0.8, 0.4], 'FitBoxToText', 'off');
ha = annotation('textbox', dim, 'String', dettagli, 'FitBoxToText', 'off');
set(ha, 'HorizontAlalignment', 'left', 'VerticalAlignment', 'middle');

% salvo il plot su file
print('eb_axial', '-dpng')