program :- read(A), akhir(A) ,nl.
	akhir([A|[]]):- write(A).
	akhir([_|B]):- akhir(B).
:- program.