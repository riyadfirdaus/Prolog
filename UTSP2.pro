program :- read(List), minim(List,X), write(X),nl.
	minim([A,B|T],X):-
		A>=B, minim([B|T],X).
	minim([A,B|T],X):-
		A=<B, minim([A|T],X).
	minim([A],A).
:-program.