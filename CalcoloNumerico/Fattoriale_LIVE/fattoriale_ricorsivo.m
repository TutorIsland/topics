# Calcola il fattoriale di n usando un algoritmo ricorsivo.

# Questo codice e' stato sviluppato durante la diretta sul canale YouTube "Tutor Island"
# reperibile a questo link: https://youtu.be/fS-AHU43x4U
R
# Iscriviti a Tutor Island: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw?sub_confirmation=1
#
# Condividi i video con i tuoi amici / colleghi / compagni di studio !
#
# Richiedi supporto per i tuoi studi o consulenze professionali a: contact.tutorisland@gmail.com


function [f] = fattoriale_ricorsivo(n)

	# input validation
	if ( ~isnumeric(n) || (n < 0) )
		error("n deve essere un numero intero non negativo!");
	end

	if ( n > 1 )
		f = fattoriale_ricorsivo(n-1)*n;
	else
		f = 1;
	end

end
