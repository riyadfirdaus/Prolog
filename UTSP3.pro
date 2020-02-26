program:- read(List), read(K), jum(List,K,0),nl.
	jum(_,0,Hasil):- write(Hasil).
	jum([H|T],K,Hasil):-
		K>0,
		H1 is H mod 2, H1 == 0,
		K1 is K - 1,
		Hasil1 is Hasil + H,
		jum(T,K1,Hasil1).
	jum([H|T],K,Hasil):-
		K>0,
		H1 is H mod 2, H1 =\= 0,
		jum(T,K,Hasil).
:-program.