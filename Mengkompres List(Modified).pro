program:- read(List), kompres(List,1,X), write(X), nl.
	kompres([],_,[]).
	kompres([A],K,[[A,K]]):- K>1.
	kompres([A],1,[A]).
	kompres([A,B|T],K,[[A,K]|X]):- K>1, A=\=B, kompres([B|T],1,X).
	kompres([A,B|T],1,[A|X]):- A=\=B, kompres([B|T],1,X).
	kompres([A,B|T],K,X):- A==B, K1 is K + 1, kompres([B|T],K1,X).
:-program.