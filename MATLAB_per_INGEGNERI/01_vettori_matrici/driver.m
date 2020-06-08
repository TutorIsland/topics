% MATLAB PER INGEGNERI #01
%
% sviluppato da:
% contact dot tutorisland at gmail dot com

% COMMENTI
%
% questo e' un commento, serve per capire cosa fa il codice
% senza necessita' di leggerne tutte le righe - non viene letto da MATLAB;
% quello che su una riga si trova dopo il simbolo '%' è un commento

% VARIABILI
%
% memorizzano dei dati e ci permettono di richiamarli per nome;
% posso chiamare le variabili con il nome che preferisco
% a patto che non inizi con un numero o simboli strani
% (usa le lettere, per ora!)

% VETTORI E MATRICI
%
% l'operatore " ' " (apice singolo) ha la funzione di trasporre
b = [28 34 28]'
A = [8 1 6;
     3 5 7;
     4 9 2] % commento

% SOLUZIONE DI UN SISTEMA LINEARE ( " \ " )
%
x = A \ b % soluzione

% PRODOTTO MATRICE - VETTORE
%
% controllo che la soluzione sia corretta
b_calc = A * x
err = b - b_calc % mi aspetto "0"