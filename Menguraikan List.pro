program:- read(List), urai(List, X), write(X), nl.
	urai([],[]).
	urai([[H,K]|[]],X):- expand([H,K],X).
	urai([H|T],[H|X]):-
		\+ is_list(H),
		urai(T,X).
	urai([[H,K]|T],Hasil):-
		expand([H,K], X1),
		urai(T, X2),
		append(X1,X2, Hasil).

	expand([H,1], [H]).
	expand([_,0], []).
	expand([H,K], [H|X]):-
		K>0, K1 is K-1,
		expand([H,K1], X).
:-program.