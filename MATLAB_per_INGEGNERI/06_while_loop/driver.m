% dado
vincente = floor( rand()*6 + 1 ); % numero da 1 a 6 compresi ; sperimenta tu stesso nella riga di comando!
disp("Il dado e' stato lanciato...");
disp("***");

scelto = input("Inserisci un numero intero tra 1 e 6 compresi: "); % TODO dovremmo fare un controllo del output, ma evitiamo, per semplificare

while (scelto != vincente)
    disp("Il numero da te scelto non e' vincente, riprova!");
    scelto = input("Inserisci un numero intero tra 1 e 6 (compresi): ");
end

output_finale = ["Complimenti, hai indovinato! Il numero vincente e': " num2str(vincente)];
disp(output_finale);

% Compiti per casa:
%
% 1. fai che il programma chieda al giocatore il suo nome e lo stampi poi quando vince, insieme ad 'output_finale'
% 2. controllo della validita' del numero passato in input dall'utente
% 3. "Altra partita?"