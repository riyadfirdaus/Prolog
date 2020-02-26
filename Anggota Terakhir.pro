program :- read(A), cetak(A) ,nl.
	cetak([A|[]]):- \+ is_list(A), write(A).
	cetak([A|B]):- cetak(B).
:- program.