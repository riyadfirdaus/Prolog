program:- read(List), mul(List,X),write(X),nl.
	mul([_,0],[]).
	mul([A,B],[X1|X]):-
		X1 is B*A, B1 is B - 1,
		mul([A,B1],X). 
:-program.