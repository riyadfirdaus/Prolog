program:- read(List), kompres(List,1,X), write(X), nl.
	kompres([],_,[]).
	kompres([A],K,[[A,K]]).
	kompres([A,B|T],K,[[A,K]|X]):- A=\=B, kompres([B|T],1,X).
	kompres([A,B|T],K,X):- A==B, K1 is K + 1, kompres([B|T],K1,X).
:-program.