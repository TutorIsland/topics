# Questo codice e' stato sviluppato durante la diretta sul canale YouTube "Tutor Island"
# reperibile a questo link: https://youtu.be/fS-AHU43x4U
R
# Iscriviti a Tutor Island: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw?sub_confirmation=1
#
# Condividi i video con i tuoi amici / colleghi / compagni di studio !
#
# Richiedi supporto per i tuoi studi o consulenze professionali a: contact.tutorisland@gmail.com


n = 400000;

# si aggiudica il 2o posto
tic
f = fattoriale_iterativo(n);
toc

# errore: "recursion limit exceeded"
# si aggiudica il 3o posto !!
#{
		tic
		f = fattoriale_ricorsivo(n);
		toc
#}

# !!!!! si aggiudica il 1o posto  !!!!!
tic
f = fattoriale_vettoriale(n);
toc
