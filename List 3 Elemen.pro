program:- read(A),read(B),read(C), buat(A,B,C,X), write(X), nl.
	buat(A,B,C,[A|[B|[C]]]).
:- program.