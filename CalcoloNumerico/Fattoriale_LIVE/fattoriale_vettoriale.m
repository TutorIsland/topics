# Calcola il fattoriale di n usando la function "prod" di MATLAB, quindi con un
# calcolo vettorizzato.

# Questo codice e' stato sviluppato durante la diretta sul canale YouTube "Tutor Island"
# reperibile a questo link: https://youtu.be/fS-AHU43x4U
R
# Iscriviti a Tutor Island: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw?sub_confirmation=1
#
# Condividi i video con i tuoi amici / colleghi / compagni di studio !
#
# Richiedi supporto per i tuoi studi o consulenze professionali a: contact.tutorisland@gmail.com


function [f] = fattoriale_vettoriale(n)

	# input validation
	if ( ~isnumeric(n) || (n < 0) )
		error("n deve essere un numero intero non negativo!");
	end

	# VECTORIZATION del codice di partenza (iterativo)
	f = prod(1:n);	

end
