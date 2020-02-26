program:- read(List), urai(List, X), write(X), nl.
	urai([H],[H]).
	urai([],[]).
	urai([H|T],[H|X]):-
		\+ is_list(H),
		urai(T,X).
	urai([[H,K]|T],[Hasil|X]):- expand([H,K],Hasil).
	expand([H,K],[H|X]):- K>0,K1 is K-1, expand([H,K1],X).
	expand([H,1],[H]).
	expand([_,0],[]).
:-program.