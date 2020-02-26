program :- read(A), read(K), cari(A,K,1), nl.
	cari([A|_],K,K):- write(A).
	cari([A|B],K,CTR):- CTR < K, Y is CTR + 1, cari(B,K,Y).
:- program.