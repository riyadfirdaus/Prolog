program :- read(List), ganjil(List,X), write(X), nl.
	ganjil([],[]).
	ganjil([H],[H]).
	ganjil([A|[_|T]],[A|X]):- ganjil(T,X).
:- program.